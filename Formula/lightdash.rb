class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.209.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.209.1/lightdash-cli-3.209.1-macos-arm64.tar.gz"
      sha256 "82fb5350e73bd82a27d91ffdb2e05e9966323cdfb474adc0d49c7e999ca7d45f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.209.1/lightdash-cli-3.209.1-macos-x64.tar.gz"
      sha256 "47e8a4b55b489824b73688dcc7ebdc50c3e32e32f18606364a7475abb9d199fe"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.209.1/lightdash-cli-3.209.1-linux-x64.tar.gz"
    sha256 "f0a6c3c191ee1d9436d39cb18c84b3fa98c96dc10d367454772070170192b7af"

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
