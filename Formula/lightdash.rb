class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3199.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3199.0/lightdash-cli-0.3199.0-macos-arm64.tar.gz"
      sha256 "e550a1b060befe14c3151d1eb80804dc9d5faafa33dcf416ff81d4fed7df07eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3199.0/lightdash-cli-0.3199.0-macos-x64.tar.gz"
      sha256 "9c0c97b6262dcc1e073366f2d3c62d6ee24f06ce5c1cfd5d18f3e699e61cbd63"
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
