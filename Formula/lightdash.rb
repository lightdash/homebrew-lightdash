class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.283.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.283.0/lightdash-cli-2.283.0-macos-arm64.tar.gz"
      sha256 "68a6400c95a76e0192fdfc91d110a3deef372c2adae7344a2816d9ff83450eed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.283.0/lightdash-cli-2.283.0-macos-x64.tar.gz"
      sha256 "92557921fc535d0dcf11de892d8f4c1c817c8fe0c3f4e8b8d9cd6b52f57511fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.283.0/lightdash-cli-2.283.0-linux-x64.tar.gz"
      sha256 "a5f5de736c0d0899e704bc951e1a29c079172b50834658aeafb0720e0ab045e8"
    end
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
