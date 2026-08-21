class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.234.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.234.1/lightdash-cli-1.234.1-macos-arm64.tar.gz"
      sha256 "6d2553faed6f87101301f798af273322f4e44dc7a5c2f29a9eeb944b2de21856"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.234.1/lightdash-cli-1.234.1-macos-x64.tar.gz"
      sha256 "ad7167507462d920216b6ab44c0151607ce2e05c81ac7594c58b4f3ed055ff2d"
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
