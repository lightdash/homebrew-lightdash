class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2804.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2804.0/lightdash-cli-0.2804.0-macos-arm64.tar.gz"
      sha256 "9d11d2743311f0520af5260d2b1e090de9ef4f74d39e25456157d9e9d3aa7680"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2804.0/lightdash-cli-0.2804.0-macos-x64.tar.gz"
      sha256 "a307d0d6217fb8cf8cccf00a46b5304990b7ad3177bd2b0e1c35f4f08addc3c3"
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
