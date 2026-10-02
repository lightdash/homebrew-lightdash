class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.8/lightdash-cli-2.415.8-macos-arm64.tar.gz"
      sha256 "7d7deee8986ccd18e0dab32bc7edc24db07808391993f34612315e98723268eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.8/lightdash-cli-2.415.8-macos-x64.tar.gz"
      sha256 "e60ec8102943d193e84ef76bfd0a64853f0cf72df511fa4011be62a5442df497"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.8/lightdash-cli-2.415.8-linux-x64.tar.gz"
    sha256 "df7a46a7d175ce817f82d55305bd197ccff246b4bf9c3a827cffee5b4c37c024"

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
