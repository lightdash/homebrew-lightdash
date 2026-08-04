class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.82.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.82.1/lightdash-cli-1.82.1-macos-arm64.tar.gz"
      sha256 "5b01a82f68399df7046a45a6454766385ae22a94e10a0cd0ed60b389b3a96d9e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.82.1/lightdash-cli-1.82.1-macos-x64.tar.gz"
      sha256 "648aea0d8601e4bce0c7b83108269020b274247f8df2c40e513b1c94d46c5c78"
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
