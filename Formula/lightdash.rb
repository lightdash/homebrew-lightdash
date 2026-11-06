class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.173.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.173.2/lightdash-cli-3.173.2-macos-arm64.tar.gz"
      sha256 "2de49d32e28b0545894476aae62ba4ad02746af8d35a9390009099d5d5c90b69"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.173.2/lightdash-cli-3.173.2-macos-x64.tar.gz"
      sha256 "a6eea3afc7fd0bbe5208105c943aeb735790412c67d44c91bf63135b8d617e8d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.173.2/lightdash-cli-3.173.2-linux-x64.tar.gz"
    sha256 "31c92a48665fc969650ac547e478f550f0a5a9e786c0ba29c82ee6800c3754c4"

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
