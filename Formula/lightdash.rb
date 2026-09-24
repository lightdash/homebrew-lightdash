class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.320.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.320.2/lightdash-cli-2.320.2-macos-arm64.tar.gz"
      sha256 "a89cc7d8b40193de05fcae2179148f4c00ae3898a48b2d620ba225ec86abc783"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.320.2/lightdash-cli-2.320.2-macos-x64.tar.gz"
      sha256 "86335ade5f3257a1971b78f6b144fce41d1a30a9144049aad58f756f968e9210"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.320.2/lightdash-cli-2.320.2-linux-x64.tar.gz"
    sha256 "4392120415fb24f0da2bb3f6e556da6d963fd34c336e8133f0f52ff38bf74b5b"

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
