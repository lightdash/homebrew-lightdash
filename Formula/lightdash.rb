class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3335.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3335.1/lightdash-cli-0.3335.1-macos-arm64.tar.gz"
      sha256 "954bcab5e6de086b0cc4e43258fd598839a6a49751d5649fab0356dd40309dec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3335.1/lightdash-cli-0.3335.1-macos-x64.tar.gz"
      sha256 "423c7f9699bee74b7c82886d8a0cee52dcbddb4b11e2ba9bea82b4243f02b0b2"
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
