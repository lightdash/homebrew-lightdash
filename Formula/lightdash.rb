class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.483.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.483.0/lightdash-cli-2.483.0-macos-arm64.tar.gz"
      sha256 "07a5ad760d6e9844b6403ac52e4a139180978b59f15dc599aec5c4015a28139a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.483.0/lightdash-cli-2.483.0-macos-x64.tar.gz"
      sha256 "d77bd3b06a47057846cc5c87cb544b3513fa2d53df813e82236a251f5e838004"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.483.0/lightdash-cli-2.483.0-linux-x64.tar.gz"
    sha256 "c33d4fa84760665feac82cb197c990759e001c3ba79a1d46b986e7af8a58f673"

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
