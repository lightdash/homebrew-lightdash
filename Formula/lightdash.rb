class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.53.0/lightdash-cli-1.53.0-macos-arm64.tar.gz"
      sha256 "bdfed717334ce89ba7b10e6bfdbdb518fa25d3a676cf327b1188e6da4b903ee1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.53.0/lightdash-cli-1.53.0-macos-x64.tar.gz"
      sha256 "30ca159b924e6ed286287566537c88df9f40bb8ff28b2952b2ccd955358353ca"
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
