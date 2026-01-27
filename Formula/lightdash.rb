class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2378.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2378.2/lightdash-cli-0.2378.2-macos-arm64.tar.gz"
      sha256 "9ad8d761a443eba17bb9bb7f9eb1c26b32ed54fac5b4bda8e00602a7f6c1ead1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2378.2/lightdash-cli-0.2378.2-macos-x64.tar.gz"
      sha256 "cc387421c6548d9b724ddc61f94f11a1ace39053bf078cd731c492253b5a3888"
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
