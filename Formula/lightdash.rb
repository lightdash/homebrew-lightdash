class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.50.0/lightdash-cli-3.50.0-macos-arm64.tar.gz"
      sha256 "7caaaf4d6c0bb7bda1dabe224e522c1e09a90293e143bc0b677ab3d5f963339f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.50.0/lightdash-cli-3.50.0-macos-x64.tar.gz"
      sha256 "06607f51af941fafdcb4ac675f66c779c9c0f0a8dd7b6a25f22478f6ea1d2904"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.50.0/lightdash-cli-3.50.0-linux-x64.tar.gz"
    sha256 "3c0a52a0890a8ac6e4edb96a8e803bc880e0dcdd0cc330214a0ba6bfee9fa7a6"

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
