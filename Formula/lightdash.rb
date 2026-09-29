class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.373.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.373.1/lightdash-cli-2.373.1-macos-arm64.tar.gz"
      sha256 "05117bc9d29c00d4d6272fb43151d0dbeb7d3a1c8f030f5a40967761a1cdfd2d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.373.1/lightdash-cli-2.373.1-macos-x64.tar.gz"
      sha256 "bf60e8ac096f785766f1e89eb888934366236d052356a9415a059ed64435bfbb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.373.1/lightdash-cli-2.373.1-linux-x64.tar.gz"
    sha256 "d6332012057e697e2f3258adc17e74be29506c310387d5ef8b75584d4db1f7e6"

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
