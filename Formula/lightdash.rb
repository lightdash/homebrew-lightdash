class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.286.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.286.0/lightdash-cli-3.286.0-macos-arm64.tar.gz"
      sha256 "749e1256e7cc731430cc073c260cc3e581f73d0d9d8150d7bb4478da76ae86fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.286.0/lightdash-cli-3.286.0-macos-x64.tar.gz"
      sha256 "b0c8612f94f5c22053d3967d4a572e1ab268e43d5b46f8599439869dc61b3acc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.286.0/lightdash-cli-3.286.0-linux-x64.tar.gz"
    sha256 "7b2ddd4829472f2bbf2c1ddf7c652234f878e12b5efd9f6703cf1cc550f7941a"

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
