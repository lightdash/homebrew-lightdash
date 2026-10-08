class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.494.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.494.0/lightdash-cli-2.494.0-macos-arm64.tar.gz"
      sha256 "0a3cbe87c9cdac471e44f87324dff806816d9e25ed764366458cb945ce457d05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.494.0/lightdash-cli-2.494.0-macos-x64.tar.gz"
      sha256 "5326c9ef5dac701a10b8bfefd7d460da2f810f8c41e8541d3f34548f933cf4a8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.494.0/lightdash-cli-2.494.0-linux-x64.tar.gz"
    sha256 "7f20d081576a288eebe3f23c86e9ee3e25e0b9b6c09b12586cdb8658a1bbd09e"

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
