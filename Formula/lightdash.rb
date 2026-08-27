class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.18.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.18.2/lightdash-cli-2.18.2-macos-arm64.tar.gz"
      sha256 "3cd93e5bfe97395fd9d57339e532f69541fa6db746f34ea2ce38102612d0d375"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.18.2/lightdash-cli-2.18.2-macos-x64.tar.gz"
      sha256 "968243161524ebd36d34aa73d7e66424ef0005644e86f6a1af41f06905054f71"
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
