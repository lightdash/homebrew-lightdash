class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3249.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3249.1/lightdash-cli-0.3249.1-macos-arm64.tar.gz"
      sha256 "24494a55510dfec1e6064e7475ea3ffb505cbcd0d447e2bcb9cc91b3f6c9f10d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3249.1/lightdash-cli-0.3249.1-macos-x64.tar.gz"
      sha256 "5b7d202e9b527dc92ab55e4b3b9f84aaa00c59a715f8dbf861743742342d5bec"
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
