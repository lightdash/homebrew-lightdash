class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3155.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3155.0/lightdash-cli-0.3155.0-macos-arm64.tar.gz"
      sha256 "c4f90ef5f3b5e22dd11a134bdc2a3f9ee6176d254c18b800e92c1849d4dc2c04"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3155.0/lightdash-cli-0.3155.0-macos-x64.tar.gz"
      sha256 "5ab70a3827034ab56301098970b7e39735cf2df4ded23243ed6a49acaf262bab"
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
