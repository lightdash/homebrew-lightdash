class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3205.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3205.0/lightdash-cli-0.3205.0-macos-arm64.tar.gz"
      sha256 "af09dec22920b3208c81e0b7d60d060b1f4efca174df91bffa2eecff9e432c80"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3205.0/lightdash-cli-0.3205.0-macos-x64.tar.gz"
      sha256 "a461f5ed9b8e30e927f568a4797aa5c9a60418677b9044771536e867b6551def"
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
