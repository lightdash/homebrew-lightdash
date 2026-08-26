class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.13.0/lightdash-cli-2.13.0-macos-arm64.tar.gz"
      sha256 "10598385010c346be6816aeac0070f1dd9e521ddaadc0fcf98ec7c559e44eb45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.13.0/lightdash-cli-2.13.0-macos-x64.tar.gz"
      sha256 "12628f7561a05c6b9a7c9ae6115415b585b552646bd4e2a566e9afa995d4e316"
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
