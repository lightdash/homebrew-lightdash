class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.203.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.203.1/lightdash-cli-1.203.1-macos-arm64.tar.gz"
      sha256 "c8bf90f754a7f4c5cd6b8cd2d59c13ffb6e29143ce76288dbee680d4fed2606c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.203.1/lightdash-cli-1.203.1-macos-x64.tar.gz"
      sha256 "97bd6662f3ce5b7dd29ac8d44158df81001b533d68114304f92f39e278592aa9"
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
