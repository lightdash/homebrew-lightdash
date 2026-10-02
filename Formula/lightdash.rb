class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.4/lightdash-cli-2.415.4-macos-arm64.tar.gz"
      sha256 "cef6294535564d96de57de5c188043f47e892c01c29f6631690deac09cd75425"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.4/lightdash-cli-2.415.4-macos-x64.tar.gz"
      sha256 "52e7748d29664a1a6895706a74aa1f21d6612148e893b43ab7ce78a07a0c399b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.4/lightdash-cli-2.415.4-linux-x64.tar.gz"
    sha256 "23670b3d5a208696b224fd2c3aaff17c57e406c45b5bf3309c2cabbc452dd962"

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
