class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.144.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.144.0/lightdash-cli-2.144.0-macos-arm64.tar.gz"
      sha256 "821dbb5ed226e6f6640b4d16dabca608c1a6c24cfe90214ff991848d2a27dd97"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.144.0/lightdash-cli-2.144.0-macos-x64.tar.gz"
      sha256 "092adc9e6ba046ce6ff3f12e6c1b7ae21e22adaa124ebd40da94d51a7e150478"
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
