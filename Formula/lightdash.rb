class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.84.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.84.0/lightdash-cli-3.84.0-macos-arm64.tar.gz"
      sha256 "ea61e67d88c0b27092c83dbcd7f26b3d72b69b7d88e6dba860a8ea15f3f94000"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.84.0/lightdash-cli-3.84.0-macos-x64.tar.gz"
      sha256 "7e41b88b06aee78c29851d14635408a5a47623a9d44cb5c90dbf79c5252b17d4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.84.0/lightdash-cli-3.84.0-linux-x64.tar.gz"
    sha256 "e05ebd52ba81ca4ac01b1f55a2cf146feba01443e57f566c372173dbc866637e"

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
