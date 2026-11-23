class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.377.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.377.0/lightdash-cli-3.377.0-macos-arm64.tar.gz"
      sha256 "aa00eaec38edeb53a1f3f1a77a74904c4a932e80166a87cc5ac850ae19ed852d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.377.0/lightdash-cli-3.377.0-macos-x64.tar.gz"
      sha256 "4b9812525488614065ac4b66bfd862e61b6b56f8c6a3ee1eca68681ee7c791fe"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.377.0/lightdash-cli-3.377.0-linux-x64.tar.gz"
    sha256 "2532bb866fa75601dc9d9a72742221d0acd9fa6eb7c5ab07a3f742e8ca55c686"

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
