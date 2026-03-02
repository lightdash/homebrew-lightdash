class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2546.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2546.0/lightdash-cli-0.2546.0-macos-arm64.tar.gz"
      sha256 "6f92a24ca7997fec74f24997b3d07cfa602ea685a07d23aec949e23a5f4fdae5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2546.0/lightdash-cli-0.2546.0-macos-x64.tar.gz"
      sha256 "3fd3dcb72b363546ed5452c5971ed0002fbfbdc4e12a06e9133dc25ce52d42b0"
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
