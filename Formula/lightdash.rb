class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.415.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.4/lightdash-cli-3.415.4-macos-arm64.tar.gz"
      sha256 "8c76bef8dc96bdb243ef4fa42f396a721de989b14de02dd3c4c1ce954ea6f6d8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.4/lightdash-cli-3.415.4-macos-x64.tar.gz"
      sha256 "897adaab0a32fe9074b587a520ba1cece655f7f020ff42c3c69869dc678c0475"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.415.4/lightdash-cli-3.415.4-linux-x64.tar.gz"
    sha256 "dd1d2cd7a374e95152eab2bce92f825bb199b8adef8eff1c8a1b8a4f263b43a5"

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
