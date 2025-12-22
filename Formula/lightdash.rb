class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.6/lightdash-cli-0.2270.6-macos-arm64.tar.gz"
      sha256 "e0c7d683444541f1d5666c77cc531a45f3e2f0d4102eae2d64e5ae768222e08c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.6/lightdash-cli-0.2270.6-macos-x64.tar.gz"
      sha256 "0dc4122576030e51d706e9c135e5d139c3bb1702eacd86e182fd3881d0b10879"
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
