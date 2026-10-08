class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.495.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.495.1/lightdash-cli-2.495.1-macos-arm64.tar.gz"
      sha256 "c764e57ceea6159c78414473c90c6a42a776a12cd553d6ec3d3f395649a2db85"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.495.1/lightdash-cli-2.495.1-macos-x64.tar.gz"
      sha256 "180cb800588021e8c8ba8082ef8934e6b2325006fcea09f39ce956820277250b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.495.1/lightdash-cli-2.495.1-linux-x64.tar.gz"
    sha256 "6a143373d9a9f327e1ff28c44a427fb41ebf466098fbd0bca23e960a970170ef"

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
