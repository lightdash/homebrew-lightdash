class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.510.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.510.0/lightdash-cli-2.510.0-macos-arm64.tar.gz"
      sha256 "91d5b0b22d671a512063d4ab2acce30547ce9bba8b3733aaa31114f35b1ec8b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.510.0/lightdash-cli-2.510.0-macos-x64.tar.gz"
      sha256 "1763f7de17f9aa711e5e6bd0d9263ca245aae90d0cada17c5b53dbb7b11f065f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.510.0/lightdash-cli-2.510.0-linux-x64.tar.gz"
    sha256 "00a606503266abe7e10df9dd971050020e81844e9d758ff49b4f08e6a5dc62f1"

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
