class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.0/lightdash-cli-3.420.0-macos-arm64.tar.gz"
      sha256 "9f7f1d77cd70c9e008cedb2c11e0e2d4f2be32f7494e2ef402b10cb82dcd28d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.0/lightdash-cli-3.420.0-macos-x64.tar.gz"
      sha256 "90b130a19b6cc10cecc5500067d3d3af5f9b7d4b3f048296234825a26879e8a7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.0/lightdash-cli-3.420.0-linux-x64.tar.gz"
    sha256 "53d2fa60d6016f213ad463a75e8511fa319f10a533de17bc93016da0461c0db3"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
