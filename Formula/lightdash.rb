class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2610.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2610.3/lightdash-cli-0.2610.3-macos-arm64.tar.gz"
      sha256 "3c814530abf2a1d610ad9dc6f40b39343a70135aa84dc818c2289cc6dac60891"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2610.3/lightdash-cli-0.2610.3-macos-x64.tar.gz"
      sha256 "ebff3b92bb79daef774b6e65a7122dc9438389c2d5f7080a4ed478a185dcf018"
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
