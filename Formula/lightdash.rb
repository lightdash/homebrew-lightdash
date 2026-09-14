class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.207.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.207.1/lightdash-cli-2.207.1-macos-arm64.tar.gz"
      sha256 "b622497281ec223287080d4d072e0bcd86b3737c573da0059418698b7a2fec7f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.207.1/lightdash-cli-2.207.1-macos-x64.tar.gz"
      sha256 "3b47215dc3c4b97a7c0ec672e2b9786e7d3a535cb1f162e08aadb51b5d07f5db"
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
