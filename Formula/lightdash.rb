class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.279.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.279.1/lightdash-cli-2.279.1-macos-arm64.tar.gz"
      sha256 "6974f8236721fad1d7fd3e0e8bc208376673fa9913871f00599b9d305de0ce9e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.279.1/lightdash-cli-2.279.1-macos-x64.tar.gz"
      sha256 "dc18ed92ed3c4354a7d29e4e18e085cd17ba502551b69f70304eab72aa40384f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.279.1/lightdash-cli-2.279.1-linux-x64.tar.gz"
      sha256 "e9a1a6eb03d0b20c0a88beb0486b68c58bba8e2e5d6938fedfd12138110b376a"
    end
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
