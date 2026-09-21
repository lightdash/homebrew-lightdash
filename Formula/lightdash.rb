class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.274.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.1/lightdash-cli-2.274.1-macos-arm64.tar.gz"
      sha256 "0e8b943153ba7933607f67c74cb7f37f64c9ad635182f85efe0b51a49aa6f33f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.1/lightdash-cli-2.274.1-macos-x64.tar.gz"
      sha256 "0e41c16dfb36d79d8dbb91a43593905f4459d48560cb2d7cb2504b616279dba0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.274.1/lightdash-cli-2.274.1-linux-x64.tar.gz"
      sha256 "eceac27cac55cd23e15296fcab4efb82c9f785268a51d738b10d751d364cd879"
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
