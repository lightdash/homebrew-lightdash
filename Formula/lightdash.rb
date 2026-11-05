class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.165.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.165.2/lightdash-cli-3.165.2-macos-arm64.tar.gz"
      sha256 "7c67673e2e6146dbe1a63d22a10d0aa19bbababc7c46c1b0be5ddfa8151be4ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.165.2/lightdash-cli-3.165.2-macos-x64.tar.gz"
      sha256 "24c13980b1773138c409bdcd1eacf3202ea40c81fc09846b738e757c9b25909d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.165.2/lightdash-cli-3.165.2-linux-x64.tar.gz"
    sha256 "2acc1390bee5f7be38873f2d318cef66dbc546b12318dcf7ae57a155155cadb6"

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
