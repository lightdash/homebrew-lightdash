class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3465.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3465.1/lightdash-cli-0.3465.1-macos-arm64.tar.gz"
      sha256 "5073b0c7471f43868d27aa81bc6ab7a0ef5e5aac94af80b155a27bf751f73cba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3465.1/lightdash-cli-0.3465.1-macos-x64.tar.gz"
      sha256 "568a92a136ff396846ff1c0b172a2194b4cd828de3438ef581a2c6f9cab54d79"
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
