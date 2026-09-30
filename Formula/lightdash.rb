class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.399.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.4/lightdash-cli-2.399.4-macos-arm64.tar.gz"
      sha256 "6830e41686f4eab8a413b6c06ae9f62c466d8403501051f5ec6341ca6281fb57"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.4/lightdash-cli-2.399.4-macos-x64.tar.gz"
      sha256 "9e08dc209323bf4afa719b105929df88ea6624735f651702362f6bb574a56b8f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.399.4/lightdash-cli-2.399.4-linux-x64.tar.gz"
    sha256 "a70ad02f0a7b2f001cc1ddc558a7bb84964666dfc45acfbf4eebbcfae12837db"

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
