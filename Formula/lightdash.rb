class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2593.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2593.0/lightdash-cli-0.2593.0-macos-arm64.tar.gz"
      sha256 "a7f0bb8b529890cc37d574565fb2e63597b39161ca7338b9ee59ad3a26d22a21"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2593.0/lightdash-cli-0.2593.0-macos-x64.tar.gz"
      sha256 "3c7d1f5cdc9001f5dc384d859fa99e6f78f5ec2a6fc019b906e19201259c4276"
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
