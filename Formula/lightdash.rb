class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.124.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.124.0/lightdash-cli-3.124.0-macos-arm64.tar.gz"
      sha256 "12133c785c5ddcabe45dc6dab2a0ad6263992c853fae00df0dfafe1d393b616c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.124.0/lightdash-cli-3.124.0-macos-x64.tar.gz"
      sha256 "7c59de26b135d7119ce859af2e6099fc44dadaf3c7e5dcbda3e7ddc18bfd0185"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.124.0/lightdash-cli-3.124.0-linux-x64.tar.gz"
    sha256 "7588ab7c2f3f47bb4b0b849173dc1e3d6f36f441a04d19aa132667d15e2e2f4f"

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
