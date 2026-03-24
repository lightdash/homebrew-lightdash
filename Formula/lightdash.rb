class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2657.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.1/lightdash-cli-0.2657.1-macos-arm64.tar.gz"
      sha256 "70cf8330ba5fc6dcc4d3884baef7f73e661c602a89a8b3baa2d8869ec8b43cde"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.1/lightdash-cli-0.2657.1-macos-x64.tar.gz"
      sha256 "b863bd25eccc0eca099666a3d89ebf0bca825bd716910a5e1481fc2ac530986f"
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
