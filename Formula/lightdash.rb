class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.73.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.73.0/lightdash-cli-3.73.0-macos-arm64.tar.gz"
      sha256 "990f2fa5ee46208087d7d45d1f520730bd5eaa29f27136ebf71caa002e06ab54"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.73.0/lightdash-cli-3.73.0-macos-x64.tar.gz"
      sha256 "2fc43beb506b92f76fb989bcc984b85ccb583dbfe1a0beb686a5938e5509a063"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.73.0/lightdash-cli-3.73.0-linux-x64.tar.gz"
    sha256 "1862dd5142cfa6e604bc120b4db7302528b4bebb7b4f90e9782d267f7bcda68a"

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
