class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3237.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.3/lightdash-cli-0.3237.3-macos-arm64.tar.gz"
      sha256 "e067ed2376d93d97c32e04960870f97aecc4ad1b310b34787e6a4e5e212d855f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.3/lightdash-cli-0.3237.3-macos-x64.tar.gz"
      sha256 "b89ddeb67d1dd46bf56a1539436f4892fc2611e7c024a9fa9735cd0eed096af9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
