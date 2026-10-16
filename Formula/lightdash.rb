class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.597.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.597.0/lightdash-cli-2.597.0-macos-arm64.tar.gz"
      sha256 "a746e9ec62a2040877a61dda9460283a93c9001510f624ca4e3912dc2b3c6279"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.597.0/lightdash-cli-2.597.0-macos-x64.tar.gz"
      sha256 "96111f89e6d5b11808632ebadfc76a97ffd4c0f71f7dd56b6d57f10bd9c11069"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.597.0/lightdash-cli-2.597.0-linux-x64.tar.gz"
    sha256 "a79725d378fd2a8a25c40c2f474bc55de76e5eda303393d0b6ca1b6a08f89234"

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
