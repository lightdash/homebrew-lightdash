class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.568.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.568.2/lightdash-cli-2.568.2-macos-arm64.tar.gz"
      sha256 "ad9c9c48d1c85d3361a75bc154400a70cf1237b73f20ac61446a589b1347997e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.568.2/lightdash-cli-2.568.2-macos-x64.tar.gz"
      sha256 "8ebe19e875f739956188d22ee25dd4d3c3b8d795662aeba77a0f3c1e6f391cb1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.568.2/lightdash-cli-2.568.2-linux-x64.tar.gz"
    sha256 "b079a56b04bc0cbdbe0925f4036ef493a804245eac482a7fcb29ddbfa5a526a6"

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
