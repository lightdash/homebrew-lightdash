class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.136.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.136.0/lightdash-cli-3.136.0-macos-arm64.tar.gz"
      sha256 "d605218226d6952e0f8741f1c17dd4c154f025ca2adcf462acd0d026578e1a0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.136.0/lightdash-cli-3.136.0-macos-x64.tar.gz"
      sha256 "ec6336b08118c9ee809ddce2052a7c59a5a6d20ca1370c09d23842c169d37105"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.136.0/lightdash-cli-3.136.0-linux-x64.tar.gz"
    sha256 "c949e148c4d5b510ff145e419b64864f838e80ca2d40a2e7cbe20a20c0a04e72"

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
