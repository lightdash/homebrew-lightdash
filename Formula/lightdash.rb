class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3067.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3067.0/lightdash-cli-0.3067.0-macos-arm64.tar.gz"
      sha256 "88d90bcbcf93f868e96de9f547a516d25a78ce502708bd740162fa04cb5f0e7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3067.0/lightdash-cli-0.3067.0-macos-x64.tar.gz"
      sha256 "177ea975280aece34a6cfb88d1dfc3e2b155fee44bd60692a30b2bcfb1825369"
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
