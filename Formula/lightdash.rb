class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.566.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.566.0/lightdash-cli-2.566.0-macos-arm64.tar.gz"
      sha256 "59fe555f7291af0462f4faf2f5c207c73c62dba3e1487a0a50f57ce442388f8a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.566.0/lightdash-cli-2.566.0-macos-x64.tar.gz"
      sha256 "6959fcd854b92283cfb690be40622e28c676e6051ac28c57025313a6715e6cd5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.566.0/lightdash-cli-2.566.0-linux-x64.tar.gz"
    sha256 "a103b758058fb403eb551a2ff2e8307645427fb10a1367cefe4f2a7784f500d7"

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
