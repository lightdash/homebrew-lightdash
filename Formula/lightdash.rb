class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2251.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.6/lightdash-cli-0.2251.6-macos-arm64.tar.gz"
      sha256 "67f4f4ecdf41707a963d585c9c4d3af8deaa56fd84c7ba42841df8e970f01290"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2251.6/lightdash-cli-0.2251.6-macos-x64.tar.gz"
      sha256 "412ec01b186d9ce471fae2d8c10a6475352a24efc2f7c0a419d21bde19d3d1f5"
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
