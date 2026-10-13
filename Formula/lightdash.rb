class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.575.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.0/lightdash-cli-2.575.0-macos-arm64.tar.gz"
      sha256 "7cff0c6096c94cfa54203e18a7abaa3c338e6e7fa2a86247e6fe8d4f48c1514b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.0/lightdash-cli-2.575.0-macos-x64.tar.gz"
      sha256 "0d83d43cb63775c4457a68cc7e88484347b52cbdee27d7e41139f103d6619c7a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.575.0/lightdash-cli-2.575.0-linux-x64.tar.gz"
    sha256 "c55e820d36490905f2b52beeddc12e03aad5b2d60a4754fe363d1b18163009a8"

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
