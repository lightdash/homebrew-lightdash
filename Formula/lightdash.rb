class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.55.0/lightdash-cli-2.55.0-macos-arm64.tar.gz"
      sha256 "bfbabb0a0a087926b2818aa04b12eb38005a0c8a274bebbda465f87f0c4ef437"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.55.0/lightdash-cli-2.55.0-macos-x64.tar.gz"
      sha256 "3bcda65cfbcb768985717771449e45bf54334190e02cb76c2e4acad1b6ee335a"
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
