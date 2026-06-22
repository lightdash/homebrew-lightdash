class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3216.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3216.0/lightdash-cli-0.3216.0-macos-arm64.tar.gz"
      sha256 "d44973d54c5897d2f5b9516032229a35a5aa5735d9b449e98ace10d929393f73"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3216.0/lightdash-cli-0.3216.0-macos-x64.tar.gz"
      sha256 "0c219e58e5200cc4100a8f1265f21ef91641d5724bbe8fcf5393d2ee58cd46c7"
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
