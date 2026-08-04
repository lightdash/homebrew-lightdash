class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.79.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.79.1/lightdash-cli-1.79.1-macos-arm64.tar.gz"
      sha256 "41d8b85cda04b05a531d7b4767a78218f8dfc473171f0c6f4368fd5215d3b5c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.79.1/lightdash-cli-1.79.1-macos-x64.tar.gz"
      sha256 "7727e969b2c186ce7ecd3fc89ebe09e779b0f45036d165f00d6234f8d97c684e"
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
