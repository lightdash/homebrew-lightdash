class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.17.0/lightdash-cli-1.17.0-macos-arm64.tar.gz"
      sha256 "1529f403a338b7988f4d801504748cbfb35d3f047d848bde609abf374045b79e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.17.0/lightdash-cli-1.17.0-macos-x64.tar.gz"
      sha256 "0ee7267a76786a92833e0eedcf348c04036f86e4159110d82752cf6b868ef4d3"
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
