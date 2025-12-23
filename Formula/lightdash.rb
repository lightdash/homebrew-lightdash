class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2273.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2273.0/lightdash-cli-0.2273.0-macos-arm64.tar.gz"
      sha256 "c96803a0f8dd3c140bcd5c018a1a10613fedf338a6d09d157600c6ba82289902"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2273.0/lightdash-cli-0.2273.0-macos-x64.tar.gz"
      sha256 "2ba99b92bda6e483c67b0bc69d0b23d50e034bfa71b2756fd7150544ed0dd7d3"
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
