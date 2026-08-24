class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.246.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.246.0/lightdash-cli-1.246.0-macos-arm64.tar.gz"
      sha256 "2cd80db81ceae56ab8e8d9ae06cc78c5057a99b17744a13c656d31484c4b1751"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.246.0/lightdash-cli-1.246.0-macos-x64.tar.gz"
      sha256 "1ee5c42f9f0b3b92cbe3f72e1f80b56f966b11e73f5cce39524cf596b7f9aca2"
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
