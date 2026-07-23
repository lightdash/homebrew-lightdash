class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3470.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3470.2/lightdash-cli-0.3470.2-macos-arm64.tar.gz"
      sha256 "49e56b0395fda13602f4c2c52474306ebdd3c38a70cf14f9b5dc57ed118c997b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3470.2/lightdash-cli-0.3470.2-macos-x64.tar.gz"
      sha256 "5f8534379a3c557b1dc09516d111ad195797c31d8d1aac81925fcfdbca0caf2a"
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
