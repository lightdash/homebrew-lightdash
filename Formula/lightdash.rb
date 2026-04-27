class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2811.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.3/lightdash-cli-0.2811.3-macos-arm64.tar.gz"
      sha256 "3ff3d183554d0c03d1a5e74e803c21ab4006fe688d65bdd5c4db85638c5f73c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.3/lightdash-cli-0.2811.3-macos-x64.tar.gz"
      sha256 "83c0609c480767ab93f43de7855a7c6563c1702eb2d5437e09e60a82f8a3d839"
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
