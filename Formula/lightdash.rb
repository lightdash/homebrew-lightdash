class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2738.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2738.0/lightdash-cli-0.2738.0-macos-arm64.tar.gz"
      sha256 "dc612ff79b0b47e2a9e1d957e893f6638fc7db0cc5c6867f1855fc4e0c97d9fe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2738.0/lightdash-cli-0.2738.0-macos-x64.tar.gz"
      sha256 "f51b69199519d96f11a290e76cf712d59bb776b536462e1c3649a3c03efa7f94"
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
