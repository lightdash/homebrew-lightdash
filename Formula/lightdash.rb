class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.278.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.278.0/lightdash-cli-2.278.0-macos-arm64.tar.gz"
      sha256 "c902b2a6a5aea4f961be848b4d49fe7086a759a7f7974ed4634fc9eacfc73435"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.278.0/lightdash-cli-2.278.0-macos-x64.tar.gz"
      sha256 "d5aa9558390807d9501d6632d5cf0364f813884f676a83e53440d17404a0c154"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.278.0/lightdash-cli-2.278.0-linux-x64.tar.gz"
      sha256 "af04fc98ea82a3f0b77627b83b4bd12f1e2ef782beefca0038b9e684860529a5"
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
