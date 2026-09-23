class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.304.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.304.0/lightdash-cli-2.304.0-macos-arm64.tar.gz"
      sha256 "e69d613375447cf018ff2b5c9f1a8e18f6d6adcb419c910944b66d3959932390"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.304.0/lightdash-cli-2.304.0-macos-x64.tar.gz"
      sha256 "b83578a9268499b61bc495042cbf81bad4b33dc029e0ca7aedce59ed97752f2f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.304.0/lightdash-cli-2.304.0-linux-x64.tar.gz"
    sha256 "530a5a0a47e53ea06911a57be1c60d37518ccc5b68ffe59760e8e5d60106f045"

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
