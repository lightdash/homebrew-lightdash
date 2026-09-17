class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.253.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.253.0/lightdash-cli-2.253.0-macos-arm64.tar.gz"
      sha256 "bf929023f383e38cfd3241c802142bfed406911c11babe6e65820ea79095a20c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.253.0/lightdash-cli-2.253.0-macos-x64.tar.gz"
      sha256 "7e2dd1f29f8e75c9f73869ef76bd514133e2a9a03fb05167d26d6f4b3a3241d8"
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
