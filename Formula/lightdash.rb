class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.630.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.630.0/lightdash-cli-2.630.0-macos-arm64.tar.gz"
      sha256 "1dbd989c30a1b60d8e5cb3a0b3732d7e124dfb316f7edb0563976fcab96ef1a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.630.0/lightdash-cli-2.630.0-macos-x64.tar.gz"
      sha256 "aee304f471ffa91ca8b990c974413b0c46aa9400b78e4e159232c95dbeface81"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.630.0/lightdash-cli-2.630.0-linux-x64.tar.gz"
    sha256 "ecd50b8af2817aa41daa942a176dd31dae16002c31b50e23fb3cd6c8c3c0e8e8"

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
