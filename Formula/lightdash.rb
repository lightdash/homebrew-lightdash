class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.599.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.599.0/lightdash-cli-2.599.0-macos-arm64.tar.gz"
      sha256 "c6f3cd132ad688bbdc3554f647d7a64e222f7f892f0217f93920de8b11d7eb4b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.599.0/lightdash-cli-2.599.0-macos-x64.tar.gz"
      sha256 "1970a4d7a883e5a2680c2902b85899ae6b49d295650d270b329e68b2952a7b9c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.599.0/lightdash-cli-2.599.0-linux-x64.tar.gz"
    sha256 "b6b29a7b0c9c69be40fce5fcc5fb1c650d1917941664db1dd463c96cfc546b9d"

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
