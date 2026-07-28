class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.7.1/lightdash-cli-1.7.1-macos-arm64.tar.gz"
      sha256 "0058e4821fef3c2f58aa70f6636d10e986855309544d94cfc5979a94aa1599ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.7.1/lightdash-cli-1.7.1-macos-x64.tar.gz"
      sha256 "b1571df6ec678e02f81ea993efadf652b5bc4b8d553db904d6b6f14b6ac40176"
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
