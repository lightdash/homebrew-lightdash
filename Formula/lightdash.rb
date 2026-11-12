class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.233.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.233.0/lightdash-cli-3.233.0-macos-arm64.tar.gz"
      sha256 "1b956eeb32b796604aea272b53429fa683ef88a5de629cea03272945ea3e5d9c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.233.0/lightdash-cli-3.233.0-macos-x64.tar.gz"
      sha256 "edc7eca99e72c869380d3a8d90af3c6d7c0e315e6722816ad96a796e89f6386b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.233.0/lightdash-cli-3.233.0-linux-x64.tar.gz"
    sha256 "b9f93ff7a8de170393aa782578da084c060b16b353338b0409a5d3a44c6dd475"

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
