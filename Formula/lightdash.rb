class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.11.0/lightdash-cli-2.11.0-macos-arm64.tar.gz"
      sha256 "1b15cc76256fc8f5e89704e5f5d9611b20f51e925125adee6fe4ba3aa9ffe091"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.11.0/lightdash-cli-2.11.0-macos-x64.tar.gz"
      sha256 "bb32e724633fe5bcd8c0e443d27c8fbed5bd02cfe5aa93c641e2cc70d9af298e"
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
