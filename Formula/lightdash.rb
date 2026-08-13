class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.145.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.145.0/lightdash-cli-1.145.0-macos-arm64.tar.gz"
      sha256 "fb4eea2b2dfefb345b1702e21f2fe306d04e87deb14bb33ed9af945ab51df400"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.145.0/lightdash-cli-1.145.0-macos-x64.tar.gz"
      sha256 "1147f09a4689fc67ea81a4e0398cbe212c8554b9a5773e1ac8ad62801e76ff56"
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
