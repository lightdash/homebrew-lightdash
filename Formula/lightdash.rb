class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.115.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.115.0/lightdash-cli-3.115.0-macos-arm64.tar.gz"
      sha256 "c0731243c6e365799648597adadf2e2d78d56e218776852273e33f6235cb12fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.115.0/lightdash-cli-3.115.0-macos-x64.tar.gz"
      sha256 "484d34778d7e599eabf49ad96f8b74db1b8aabfa403dd3238340b167b885da8d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.115.0/lightdash-cli-3.115.0-linux-x64.tar.gz"
    sha256 "1e496530d8908d02c342895ebc9e15d378b9583db7b8624fb8e5ff08d059650f"

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
