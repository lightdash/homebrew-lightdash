class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2457.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.0/lightdash-cli-0.2457.0-macos-arm64.tar.gz"
      sha256 "760f7e6b0fd4f4febbd65cecc2c56241abe111bd7a12ec04647d6d0536a9f638"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2457.0/lightdash-cli-0.2457.0-macos-x64.tar.gz"
      sha256 "1cc89094c84f4890e29cd7e9c89e6fd766ca3f1228268ab7b94078afd33b4a75"
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
