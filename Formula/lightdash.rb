class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.442.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.442.0/lightdash-cli-2.442.0-macos-arm64.tar.gz"
      sha256 "d37698ec9015bd2deb14cb9df8b0cba18e429d8961a3dafdf284df9d325111b6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.442.0/lightdash-cli-2.442.0-macos-x64.tar.gz"
      sha256 "128f9590d7f55324727ca4af2a2f00c0e80d6625206512fd9de32cfb2346a9c7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.442.0/lightdash-cli-2.442.0-linux-x64.tar.gz"
    sha256 "c0180d3948d8994b0415b61096322e220c17d05621986f1b57cd13c2d1a6891e"

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
