class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2695.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2695.1/lightdash-cli-0.2695.1-macos-arm64.tar.gz"
      sha256 "15d4cc47cea2425f031ba63243d301f47ca20ddbac16ae99e391f177be0eac9c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2695.1/lightdash-cli-0.2695.1-macos-x64.tar.gz"
      sha256 "ce9044fb118be62a0237b8cfc0b32320b2ff72bb206de76e154b614dc6b25d44"
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
