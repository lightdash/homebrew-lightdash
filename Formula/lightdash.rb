class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.629.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.3/lightdash-cli-2.629.3-macos-arm64.tar.gz"
      sha256 "13f272a0bc2328eb0478d45c1677893f808fb21d5e7d5a95f9bbcb79ddf76a09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.629.3/lightdash-cli-2.629.3-macos-x64.tar.gz"
      sha256 "6b5ce0664e2511c457f1be1a9ffab2ec8afdb9984ec217ca0ebe619450c3093d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.629.3/lightdash-cli-2.629.3-linux-x64.tar.gz"
    sha256 "e00eca3dd06ea43f048304e502083b924e92e3bed8415fe15f729beb4cab8fc2"

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
