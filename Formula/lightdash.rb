class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.135.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.135.0/lightdash-cli-3.135.0-macos-arm64.tar.gz"
      sha256 "7b7e11b11afa646ee5cffebc07cbe9c08471c6ec03b5ccf2a5b57997f9ceb900"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.135.0/lightdash-cli-3.135.0-macos-x64.tar.gz"
      sha256 "7750dfb662233254562752802e558437e29407e8b6f7feb4d8021c97b943da9b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.135.0/lightdash-cli-3.135.0-linux-x64.tar.gz"
    sha256 "ac76a5b84ebba229aaa98d557a2ba9c9b0c1dd493f4e6f1200e102ce12ff1d36"

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
