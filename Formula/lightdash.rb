class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2214.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.2/lightdash-cli-0.2214.2-macos-arm64.tar.gz"
      sha256 "c2cc51d7fd4bfa5170295eb219fadefa5c16f7fdea1184fe84015787d0b7f403"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2214.2/lightdash-cli-0.2214.2-macos-x64.tar.gz"
      sha256 "781e4184088d6c03ef2c76232aa9b1c5df6b8e10e5740e6bc2cb893ddfef2d94"
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
