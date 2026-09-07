class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.139.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.139.0/lightdash-cli-2.139.0-macos-arm64.tar.gz"
      sha256 "197cfe3fed3ff79194a3c596388cde59a3ad9f0fe6f3785b5dac243d0e6268ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.139.0/lightdash-cli-2.139.0-macos-x64.tar.gz"
      sha256 "09c2e5930683449acbbb62849176c88c4888bafb38995d6eeedb449d7275400c"
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
