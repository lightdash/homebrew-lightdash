class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2984.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.2/lightdash-cli-0.2984.2-macos-arm64.tar.gz"
      sha256 "fd3f34ed7adb614b552ca5e5d8c22ce46ffa7afcfe8d923027aee079c3439f78"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2984.2/lightdash-cli-0.2984.2-macos-x64.tar.gz"
      sha256 "d7cd9884d325285a1981f935c5055422152ce4009aad4f68727c9f42cb8a0cde"
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
