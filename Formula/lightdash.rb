class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.383.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.383.0/lightdash-cli-3.383.0-macos-arm64.tar.gz"
      sha256 "42ecb0686e9294009c0b974068b865567bcbd5f1c3c8cbcd530964a65186a6b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.383.0/lightdash-cli-3.383.0-macos-x64.tar.gz"
      sha256 "e14788c79128b6669f77ca624506909fab6dbfc8bfbdc620d23bee6ce6c5d1de"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.383.0/lightdash-cli-3.383.0-linux-x64.tar.gz"
    sha256 "e2c35709c2b2cd7c9393aad7b210190c31d5919a8660844f7152e89bf33a396d"

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
