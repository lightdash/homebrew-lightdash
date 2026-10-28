class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.88.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.88.0/lightdash-cli-3.88.0-macos-arm64.tar.gz"
      sha256 "698e96751e9eaa98a87e521e5b5b3b22afe4e0e2de9a529ccc8253760a847ce8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.88.0/lightdash-cli-3.88.0-macos-x64.tar.gz"
      sha256 "fd16a4f394819300a704294573066c417d193c94a2d6528b111cacf87ec73201"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.88.0/lightdash-cli-3.88.0-linux-x64.tar.gz"
    sha256 "0e8fb0614c606efe6407e11ac2677c085fc762c16f0ad57b4543fd447f58c732"

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
