class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2259.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2259.0/lightdash-cli-0.2259.0-macos-arm64.tar.gz"
      sha256 "52f9c9717663a9d05116c1bead01c7a9a0f411bf46f93a91bb14d88de0cb473b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2259.0/lightdash-cli-0.2259.0-macos-x64.tar.gz"
      sha256 "43dbff85b363e6fa15864fd286a97442cc7ae2f2e78c0fad41cfbd80a6efbc8b"
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
