class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.51.0/lightdash-cli-2.51.0-macos-arm64.tar.gz"
      sha256 "ce53dceb8a3d23cecbb7afcf5347570a5338e3597c4db40232db12443bbf7af4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.51.0/lightdash-cli-2.51.0-macos-x64.tar.gz"
      sha256 "e5f2c16dc50c7cdfb8c3a8d278d282f840dc33774f5abdfc204425f3cc9460da"
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
