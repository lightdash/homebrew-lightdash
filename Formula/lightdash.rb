class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.63.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.63.0/lightdash-cli-3.63.0-macos-arm64.tar.gz"
      sha256 "888be55fdb0fd210d33bd3f1c418c099a71aca132a12ca76f43f96ddd4441e31"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.63.0/lightdash-cli-3.63.0-macos-x64.tar.gz"
      sha256 "d000e0d292c4b98344620b7be1805edbd7b5cf08face6853e8aff165a420adde"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.63.0/lightdash-cli-3.63.0-linux-x64.tar.gz"
    sha256 "fc0ea7752fe6e49c154bdf7e9c8a4cab832f3f8ab2d90ef366651f5a32c6eb5f"

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
