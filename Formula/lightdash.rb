class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2592.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.1/lightdash-cli-0.2592.1-macos-arm64.tar.gz"
      sha256 "207d6a8289b71eac13e5625e3636deb3897ecc9ad402f473c5edfa993e5edba4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.1/lightdash-cli-0.2592.1-macos-x64.tar.gz"
      sha256 "6c2c2b5b10719334a0bd0effd01c81d07be996b8ef902c7d5de2d3f91ec2b6e0"
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
