class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.551.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.551.0/lightdash-cli-2.551.0-macos-arm64.tar.gz"
      sha256 "6a3355c9accf77342d78385f880f8b78a411d6e772d7bde633fbaa75c6469b12"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.551.0/lightdash-cli-2.551.0-macos-x64.tar.gz"
      sha256 "245bb28ace1d4269442ae26dd3a052ca3e2aabc470fb7c1a64a4458739aadadd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.551.0/lightdash-cli-2.551.0-linux-x64.tar.gz"
    sha256 "a7849ac80c1034c6847116d7ae323cf35759d616c0667605165f136e747c7aa6"

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
