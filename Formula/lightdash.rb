class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.299.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.299.0/lightdash-cli-3.299.0-macos-arm64.tar.gz"
      sha256 "4303d9f5fd0e72e6f15f5e83425f21a90db9270385e96e2b8473a04e16440cf6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.299.0/lightdash-cli-3.299.0-macos-x64.tar.gz"
      sha256 "d476c55663020eb5ac1ab53a7d081802ffaa3ed03265591f0264d7702d05dcf0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.299.0/lightdash-cli-3.299.0-linux-x64.tar.gz"
    sha256 "a1f9b2e08e432a0006f6e2f1c2cc102d9a0cdf035c250e19ca1c46aa65d9719e"

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
