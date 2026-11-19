class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.333.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.333.0/lightdash-cli-3.333.0-macos-arm64.tar.gz"
      sha256 "aa55edb358f284c4d89366919b43ad90863515ca86b38cb287da22d2089e59ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.333.0/lightdash-cli-3.333.0-macos-x64.tar.gz"
      sha256 "27acd56301472f681a9e3e57886ab0bf1bb224427970c2e96a3f0355031689a4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.333.0/lightdash-cli-3.333.0-linux-x64.tar.gz"
    sha256 "5f005f13c0d32bed1344ae240c6418777a6ce6cd0d4e4e91716e3861a534e804"

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
