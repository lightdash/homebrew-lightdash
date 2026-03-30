class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2691.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2691.1/lightdash-cli-0.2691.1-macos-arm64.tar.gz"
      sha256 "4daf8b6fa79f84a1382ddcf956e5af281ee93cebc333d918876556a6f8be04e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2691.1/lightdash-cli-0.2691.1-macos-x64.tar.gz"
      sha256 "fff3467e1d7fb48a9722262c44503f4662f59d6e07e4f98c84c61054ff0d2965"
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
