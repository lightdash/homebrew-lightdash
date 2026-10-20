class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.617.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.617.0/lightdash-cli-2.617.0-macos-arm64.tar.gz"
      sha256 "46d9fa800725dd73d0f2e98456079ac3b76c5083d15c7d264ea00dded95fd7e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.617.0/lightdash-cli-2.617.0-macos-x64.tar.gz"
      sha256 "574c1b764a87befcfc3dc2d2546303999c993ebb2a5a2c074aec686c715d5b63"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.617.0/lightdash-cli-2.617.0-linux-x64.tar.gz"
    sha256 "5399dfa514ac4b23b56c00be4ef214627e1e634a0351d339daef7f8be158ef65"

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
