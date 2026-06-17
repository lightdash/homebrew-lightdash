class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3180.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3180.1/lightdash-cli-0.3180.1-macos-arm64.tar.gz"
      sha256 "9df4b693d8cb3c6dcd141c927c19f0ef0da4ead12b51ad775237934e4d4b3418"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3180.1/lightdash-cli-0.3180.1-macos-x64.tar.gz"
      sha256 "86c156ef0daba17ec3ccbfb0b4d636ad323e2f2076f0e7cbe386871e17112ce9"
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
