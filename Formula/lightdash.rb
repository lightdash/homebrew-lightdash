class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.203.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.203.0/lightdash-cli-2.203.0-macos-arm64.tar.gz"
      sha256 "913b321e6b77d128ee0c26c0ae3269e168c00b160218912fd20689ab3a311711"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.203.0/lightdash-cli-2.203.0-macos-x64.tar.gz"
      sha256 "233e4a70ca6564bdc08fdfb4046242c7ca4a9d0680500c041009057cffe430ef"
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
