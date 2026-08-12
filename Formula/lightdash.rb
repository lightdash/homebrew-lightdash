class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.134.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.134.0/lightdash-cli-1.134.0-macos-arm64.tar.gz"
      sha256 "93228b2e019c564738bd92bc2b87579a6616bdfab6412683e566acf7c280da38"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.134.0/lightdash-cli-1.134.0-macos-x64.tar.gz"
      sha256 "3d6f0b9bbca87ac3deedfaafc7113088c71e1727f4893d5976d2d12d2f7459a8"
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
