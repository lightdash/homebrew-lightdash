class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.166.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.166.1/lightdash-cli-1.166.1-macos-arm64.tar.gz"
      sha256 "af37c4c1c61fb91aedb90467c4e4b6136ae1a15b02f479fa8b55a24ef8abefcd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.166.1/lightdash-cli-1.166.1-macos-x64.tar.gz"
      sha256 "74a3b3f842df6cb71160e9c4f1b16c606bd39e1374d8534daa506435d7d5a5c9"
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
