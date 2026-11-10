class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.194.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.194.0/lightdash-cli-3.194.0-macos-arm64.tar.gz"
      sha256 "945246b0188962f8104695023df880ac07d71e990728740071bd05ac9f7c8fd7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.194.0/lightdash-cli-3.194.0-macos-x64.tar.gz"
      sha256 "b47e56089dbd654f12e5f2f2c00d4136d01dbb99760ffad67d66f2bfc7474e7b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.194.0/lightdash-cli-3.194.0-linux-x64.tar.gz"
    sha256 "8b02cc34065a051dd022d982c51df24bc449d9b877eec33823100bc1e6e5e79f"

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
