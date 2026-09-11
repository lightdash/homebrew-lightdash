class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.196.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.196.3/lightdash-cli-2.196.3-macos-arm64.tar.gz"
      sha256 "ad7bffb2be7db2761fad9477967754ba7b4a7457e900c098e54a83a16f2513cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.196.3/lightdash-cli-2.196.3-macos-x64.tar.gz"
      sha256 "1b7c70ea867ee1da718b55edf064148ff455c548768a182727d8dd3c4a7d43ec"
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
