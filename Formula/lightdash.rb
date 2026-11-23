class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.369.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.369.1/lightdash-cli-3.369.1-macos-arm64.tar.gz"
      sha256 "d2c8bf4e8585d3e6476850c370ace216ff69e1e328b0b5e29769f0358e1a424a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.369.1/lightdash-cli-3.369.1-macos-x64.tar.gz"
      sha256 "710d4f2985ff03c6b77eb99d8858d467a9e082198fae73b909f0300270c590d9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.369.1/lightdash-cli-3.369.1-linux-x64.tar.gz"
    sha256 "b09e737ad02011acc652b3309631f9ef827319984df2b90cafe7b6dbfdd76452"

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
