class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.117.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.117.0/lightdash-cli-2.117.0-macos-arm64.tar.gz"
      sha256 "9e1144c5048a520ae4affcb5258efdd01fd6c28680865be806c503d8d539a8ba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.117.0/lightdash-cli-2.117.0-macos-x64.tar.gz"
      sha256 "9f4d6a5ca23ad0fc80b80abf584e82ae118c236918c367381926a4994b0ba22d"
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
