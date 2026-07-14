class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3380.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3380.0/lightdash-cli-0.3380.0-macos-arm64.tar.gz"
      sha256 "01ae10f393814cf76679b4d6fde6bbc453e5de46ce4a5ef084f95df091cc1082"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3380.0/lightdash-cli-0.3380.0-macos-x64.tar.gz"
      sha256 "9ba41585ba7c75707ea46fc10e6a97ef0564aa8796fc7483973d790b8e1be88a"
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
