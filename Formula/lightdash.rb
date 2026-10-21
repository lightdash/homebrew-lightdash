class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.8.0/lightdash-cli-3.8.0-macos-arm64.tar.gz"
      sha256 "09d50cd8b5de89b906e5f878fa45e172f45154599e01558dfba31b5bed1d9c71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.8.0/lightdash-cli-3.8.0-macos-x64.tar.gz"
      sha256 "ad432244d483e53df09c2b6f6a40b41f4ea8d1511312ed98707fa339b6475259"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.8.0/lightdash-cli-3.8.0-linux-x64.tar.gz"
    sha256 "e3676622b32aa117bb40bdc7a6f0a753131242aceb5d30b461c9a3d7be97fa0d"

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
