class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3101.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3101.0/lightdash-cli-0.3101.0-macos-arm64.tar.gz"
      sha256 "f6017b566c82844494c54d2b6c87d3ee487753fce18656037455b760f3bf3aca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3101.0/lightdash-cli-0.3101.0-macos-x64.tar.gz"
      sha256 "af1926f764af17b46e2cb85425c5d2ae6c434afb53c4d1385ca4c94bdee2adcf"
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
