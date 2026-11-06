class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.177.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.177.0/lightdash-cli-3.177.0-macos-arm64.tar.gz"
      sha256 "7eabf7760f1e95edad27341f92582bd4ba9f20928e07d73819568f777c759b12"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.177.0/lightdash-cli-3.177.0-macos-x64.tar.gz"
      sha256 "9bc1b35fccd1994f790a3b46766adfdcedda3f59ac9abb43482528b8c9641a76"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.177.0/lightdash-cli-3.177.0-linux-x64.tar.gz"
    sha256 "bedcdd86766d4934f948c297a8dec696183261a54a19926ce6d81ebdb5198bc7"

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
