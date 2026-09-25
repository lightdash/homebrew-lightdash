class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.337.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.1/lightdash-cli-2.337.1-macos-arm64.tar.gz"
      sha256 "47df1120651dc1225adac69d186a07f536a59b03438951fbc2292582e909103c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.337.1/lightdash-cli-2.337.1-macos-x64.tar.gz"
      sha256 "40a62f392681c9978bc13627fc69a7f89eede870f02714f9d2f03ed9432e4355"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.337.1/lightdash-cli-2.337.1-linux-x64.tar.gz"
    sha256 "802b1523b170a76917752e3d2b084570bac8852ee2c7647df27444ec14aa059b"

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
