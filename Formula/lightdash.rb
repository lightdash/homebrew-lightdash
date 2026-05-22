class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3009.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.0/lightdash-cli-0.3009.0-macos-arm64.tar.gz"
      sha256 "a91c90c81aa95f2a69d1c249fcb1265dfb5a183a6bbadb3a0ba86f7f2f03de55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3009.0/lightdash-cli-0.3009.0-macos-x64.tar.gz"
      sha256 "e66f1a7d98919b01a303c764997038ef107e83576db7203d904d75bc96c2fcd5"
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
