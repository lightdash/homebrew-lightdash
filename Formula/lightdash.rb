class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.7.0/lightdash-cli-3.7.0-macos-arm64.tar.gz"
      sha256 "418a4d5c6d925afb7f849b780b2600d2cd43b52ca05db11d9691b8194c646557"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.7.0/lightdash-cli-3.7.0-macos-x64.tar.gz"
      sha256 "572313751b1b9df4a4fe496fea6f4f928b6a0466a25a98a628aa43c8743348d1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.7.0/lightdash-cli-3.7.0-linux-x64.tar.gz"
    sha256 "e2fc6f3ca7266181e8a8309a0716ece45574256d4eed3ee115d3a65c6b857d8a"

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
