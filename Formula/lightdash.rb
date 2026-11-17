class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.294.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.294.1/lightdash-cli-3.294.1-macos-arm64.tar.gz"
      sha256 "a2133a2cf1e4ea6452318a7aa71742ff731046dfc31da0df2bda4f5f39c2bf92"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.294.1/lightdash-cli-3.294.1-macos-x64.tar.gz"
      sha256 "700972788bd814e1664282d410207b2208e9479cd369507707e134679e268f45"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.294.1/lightdash-cli-3.294.1-linux-x64.tar.gz"
    sha256 "f70298a28004590b67589e7fb308d5f951564eae97cf44b9b2a1953eb31befac"

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
