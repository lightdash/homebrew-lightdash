class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3084.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3084.2/lightdash-cli-0.3084.2-macos-arm64.tar.gz"
      sha256 "5fd2c2b29457d04cffdd92ff944ce6ec2d4024eba5d1040691283db87bafaa7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3084.2/lightdash-cli-0.3084.2-macos-x64.tar.gz"
      sha256 "ce3d0360369a0da74d2a91aeb2e7033e3a1483350e2bf0b76b48ee09b63948ac"
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
