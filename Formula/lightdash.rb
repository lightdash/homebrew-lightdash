class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.610.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.610.2/lightdash-cli-2.610.2-macos-arm64.tar.gz"
      sha256 "ffbe415d3eb1221ecebaf6bd4c452f3bcd13be456865869aecc24b88addb393d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.610.2/lightdash-cli-2.610.2-macos-x64.tar.gz"
      sha256 "834b153c53a35f7bd2de0bf9228ec03eebb20338ef08fedb645729593b5c6ff2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.610.2/lightdash-cli-2.610.2-linux-x64.tar.gz"
    sha256 "eb79ab65a30a1bbd1ebe3d9f48122914f945f6cb3f7cba935bdb42daa8b941a6"

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
