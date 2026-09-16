class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.236.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.236.0/lightdash-cli-2.236.0-macos-arm64.tar.gz"
      sha256 "281b2dce6a0adc10a065b2605f16c97984284a1ca96f5531ee317f38fe3359b2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.236.0/lightdash-cli-2.236.0-macos-x64.tar.gz"
      sha256 "abafe842cdbbce072e2f28dcc8fd9d3388f6b88567ea137b7b633702830dd19e"
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
