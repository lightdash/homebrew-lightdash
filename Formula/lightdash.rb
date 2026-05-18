class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2968.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2968.0/lightdash-cli-0.2968.0-macos-arm64.tar.gz"
      sha256 "c110a43d65d1dc4b516efb52227de6857bef10c30a8f2c85a62e534708f9f643"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2968.0/lightdash-cli-0.2968.0-macos-x64.tar.gz"
      sha256 "00d48ddb71125a119aafb21fd686b0afcbd7fea381f2d862a51bb721480e87cf"
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
