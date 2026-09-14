class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.209.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.209.0/lightdash-cli-2.209.0-macos-arm64.tar.gz"
      sha256 "d9c7482e4a7e1b34713833095ab2c91576be64657bd1a14ce13e3f10c0ea68b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.209.0/lightdash-cli-2.209.0-macos-x64.tar.gz"
      sha256 "344f82b85e3812567b2e05c159e435e827f0171d153b6820f255bb2eebf45c23"
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
