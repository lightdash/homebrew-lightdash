class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.11.0/lightdash-cli-1.11.0-macos-arm64.tar.gz"
      sha256 "e4118536102efbc82caa9712bf26d9ebdfb71b64ecef0dd57ba9f2e0b3a9e44e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.11.0/lightdash-cli-1.11.0-macos-x64.tar.gz"
      sha256 "b83b10737b5d853df31ad99d26c685fd18feffc3a52be2b664daebbf3036baa2"
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
