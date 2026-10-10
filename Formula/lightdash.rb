class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.538.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.538.0/lightdash-cli-2.538.0-macos-arm64.tar.gz"
      sha256 "98294ca4b5bb0331d2b64c849fcd6207cb7bb15651604e3b2ed809672755ddbc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.538.0/lightdash-cli-2.538.0-macos-x64.tar.gz"
      sha256 "a8c32cfabe7043ec9cbb02cd6bbb97157272684e57a36370dcda1e26b811f8d6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.538.0/lightdash-cli-2.538.0-linux-x64.tar.gz"
    sha256 "ebf975abcb9ee20649466e1d14c57006df9fcd291ed66e63b654f15bf672607f"

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
