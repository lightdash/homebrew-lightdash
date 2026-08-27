class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.31.0/lightdash-cli-2.31.0-macos-arm64.tar.gz"
      sha256 "ca00875b90f2a0b6b2f25c66b90838f935566ce2cd10e06b49055f9154b168f4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.31.0/lightdash-cli-2.31.0-macos-x64.tar.gz"
      sha256 "931f115345075393b5ec698439973e90899465899bf16c3e81ec4a7119fb25db"
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
