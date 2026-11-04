class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.154.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.154.0/lightdash-cli-3.154.0-macos-arm64.tar.gz"
      sha256 "ca18aadb7e4bbcf16d8b2d2959aa53bade7667f2c47df46f3fe125c405c8827d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.154.0/lightdash-cli-3.154.0-macos-x64.tar.gz"
      sha256 "76633c574f19e8a87099a120f12f0b43100fcb5f1e148eba5bb2c0fc8e4f4525"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.154.0/lightdash-cli-3.154.0-linux-x64.tar.gz"
    sha256 "65fdd454dc4e650968ef4c66a1fb1070d77a8dda548934ad9f2bde9f3afbe1bd"

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
