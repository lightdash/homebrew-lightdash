class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.532.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.532.0/lightdash-cli-2.532.0-macos-arm64.tar.gz"
      sha256 "3ba2972022dc660783e3bf4ee911add53f5b617f0953d21ab9a0508a4e954878"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.532.0/lightdash-cli-2.532.0-macos-x64.tar.gz"
      sha256 "853eeeb0646f41e748b8a93cab8784e492b6696ef34b6ded39d70300461f9526"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.532.0/lightdash-cli-2.532.0-linux-x64.tar.gz"
    sha256 "e05b053dbb9a63afd26d7c86f5ca83de099e3d47e2a0a83110fa16eaf0068da1"

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
