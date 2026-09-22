class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.292.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.292.0/lightdash-cli-2.292.0-macos-arm64.tar.gz"
      sha256 "52031fa5a6673e96ba7990617452b40ab15f8750a5a43cdeb9e3028842f2efed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.292.0/lightdash-cli-2.292.0-macos-x64.tar.gz"
      sha256 "e29b2b58f80b41c67a697c7d929945a1219fde892ea122ccc1df0619e01e7b4b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.292.0/lightdash-cli-2.292.0-linux-x64.tar.gz"
    sha256 "963c251db09c9310299a83d5ab4461ed406ce52936504183f8734854cade425d"

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
