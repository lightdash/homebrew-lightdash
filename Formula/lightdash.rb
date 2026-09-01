class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.72.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.3/lightdash-cli-2.72.3-macos-arm64.tar.gz"
      sha256 "4568f2a1684920fe0a23c4531beaf434d281d78ff7b742a03ca76434d80f7be7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.3/lightdash-cli-2.72.3-macos-x64.tar.gz"
      sha256 "beb06f17970a200a99e904103517866bcbc3e48bd7d0600bc81f79c95dcf3be2"
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
