class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.586.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.586.0/lightdash-cli-2.586.0-macos-arm64.tar.gz"
      sha256 "66e1273fc92e7dd1242c650279c5a3fe5d3487a344bc4634859c949c01b0f73b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.586.0/lightdash-cli-2.586.0-macos-x64.tar.gz"
      sha256 "ee4336ae3a9a3083fcdbbfbe49269b2183831df1c1debd4ac325195c2e9720be"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.586.0/lightdash-cli-2.586.0-linux-x64.tar.gz"
    sha256 "84b85bcb7be06045fa228a61871dff3d0d5e795f6f83c4c32c6e4f00a80f01f4"

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
