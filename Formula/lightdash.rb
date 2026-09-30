class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.399.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.3/lightdash-cli-2.399.3-macos-arm64.tar.gz"
      sha256 "b82b7c39f4d309cc66716d3486a76facb847d8d2ca02a0099f8368672cfde699"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.399.3/lightdash-cli-2.399.3-macos-x64.tar.gz"
      sha256 "2f2d0c45c85e9cfaabd9bbc5e03f2ab850cc8a0c8f1a26c3cc27eaa4137df14f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.399.3/lightdash-cli-2.399.3-linux-x64.tar.gz"
    sha256 "852976807d79d889ea210888646bff19eae0e4ccc8d15e299cc45513ad78219e"

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
