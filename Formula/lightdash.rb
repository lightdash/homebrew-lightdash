class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2869.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2869.0/lightdash-cli-0.2869.0-macos-arm64.tar.gz"
      sha256 "7b9d0ca44cc032ac2f00d2af21a01c51e0cd77cf24c022c50e22f9c4ff915e66"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2869.0/lightdash-cli-0.2869.0-macos-x64.tar.gz"
      sha256 "296ade3ea54f182ddaf721cadab9379afb5dc96e8ae9d7b6e0b6a8f3fe1b1836"
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
