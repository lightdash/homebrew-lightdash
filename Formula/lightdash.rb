class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2856.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2856.0/lightdash-cli-0.2856.0-macos-arm64.tar.gz"
      sha256 "3dd988fbd77ceba6310cd9e0a98f30904429944e19ef62431a04336bfc09dca1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2856.0/lightdash-cli-0.2856.0-macos-x64.tar.gz"
      sha256 "90f53259b66fd4903292d0b35dd13f54df43fb6ce3097dc11fe7039666127bac"
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
