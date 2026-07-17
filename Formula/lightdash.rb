class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3405.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3405.0/lightdash-cli-0.3405.0-macos-arm64.tar.gz"
      sha256 "3906591c84f96eef813aa11d588636d66c99d35e45a204403909e5aa31709d9d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3405.0/lightdash-cli-0.3405.0-macos-x64.tar.gz"
      sha256 "e3a5692776ca7047cb7b2dc3634c31c3f5347c5aea73eeea763c356d63362b0b"
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
