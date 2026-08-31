class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.67.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.2/lightdash-cli-2.67.2-macos-arm64.tar.gz"
      sha256 "1ca01164b0d9a217af3a1b2b082d248dd2fd72f131c30907d45509ed7026548f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.2/lightdash-cli-2.67.2-macos-x64.tar.gz"
      sha256 "fe73ebb66b1e43373217eeb485ba179e7ad7e2c8a2897022ce20ba40ffebf656"
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
