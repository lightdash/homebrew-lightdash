class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.321.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.321.1/lightdash-cli-3.321.1-macos-arm64.tar.gz"
      sha256 "728c7981ac2167823ae27b6e4b02b6247152b503185aa89db51027ba0679b08e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.321.1/lightdash-cli-3.321.1-macos-x64.tar.gz"
      sha256 "ff6abf8ca4863778ace22c9ae6c47976c408e7839d161b707b8686e293210276"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.321.1/lightdash-cli-3.321.1-linux-x64.tar.gz"
    sha256 "95d225f71a1b69bfc2aa00f23c069171651a15f52b7025be14921dddf4237945"

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
