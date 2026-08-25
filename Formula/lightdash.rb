class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.255.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.255.0/lightdash-cli-1.255.0-macos-arm64.tar.gz"
      sha256 "c73ed7d6d44a27872820cdee48c01d914e63217a1b29aed6f5f84ce29e5419ac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.255.0/lightdash-cli-1.255.0-macos-x64.tar.gz"
      sha256 "c204da7a3ea8dd22e0689f96da4e632e1c3f97b9197ff009bbb49554038be0c9"
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
