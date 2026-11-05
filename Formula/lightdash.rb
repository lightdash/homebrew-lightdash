class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.165.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.165.1/lightdash-cli-3.165.1-macos-arm64.tar.gz"
      sha256 "da14509dbf09b5471a4696deeab3b7b2ee4b9c3b955c39a6bfe99074fb5f0cd8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.165.1/lightdash-cli-3.165.1-macos-x64.tar.gz"
      sha256 "39500579102e4615427e20f6ae4818e0d73d6010ebea0a33ee8baaa7e84939f3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.165.1/lightdash-cli-3.165.1-linux-x64.tar.gz"
    sha256 "ff05664fa83408200b1b8d81b6a750f2f7f9e1c47ad3efebc399049c11a2881d"

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
