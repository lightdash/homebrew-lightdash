class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.535.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.535.0/lightdash-cli-2.535.0-macos-arm64.tar.gz"
      sha256 "daf71a587beb7d2ceabece2f5b5ec776456d08b69b702bcd0a180c48d189371e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.535.0/lightdash-cli-2.535.0-macos-x64.tar.gz"
      sha256 "b30f5c589379295ceb35d5d52c71ce54f1bce8f6fcbd07bed736658bb0e280bc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.535.0/lightdash-cli-2.535.0-linux-x64.tar.gz"
    sha256 "c905a0151d9775a0e9478f22f69a6bb693903bd8bfdf79fe53430f635d7dd46e"

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
