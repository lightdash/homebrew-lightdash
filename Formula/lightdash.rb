class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.14.0/lightdash-cli-2.14.0-macos-arm64.tar.gz"
      sha256 "356ae00f6fad3f8d785f3aae27ef24e37d0cd34c64eda706cd64ca53d04ac3de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.14.0/lightdash-cli-2.14.0-macos-x64.tar.gz"
      sha256 "a9b1f15c155291c1d4ad40f4120591edec90069d798f73874264b55a15f973ee"
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
