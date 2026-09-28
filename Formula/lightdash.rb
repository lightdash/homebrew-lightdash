class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.360.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.360.2/lightdash-cli-2.360.2-macos-arm64.tar.gz"
      sha256 "5372addc7df493355d3fca2db9d9f00b0d13c5950bff5a049c728ffc5a5c5f0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.360.2/lightdash-cli-2.360.2-macos-x64.tar.gz"
      sha256 "0622d2347153e642004268518793970b8a0f0218143a81346f304cc7ca02bd31"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.360.2/lightdash-cli-2.360.2-linux-x64.tar.gz"
    sha256 "0531d58171f2fdb03b63ef64d1e959a40a843e2debe10ab8a5803431d997260a"

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
