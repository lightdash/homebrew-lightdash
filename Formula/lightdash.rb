class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.169.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.3/lightdash-cli-3.169.3-macos-arm64.tar.gz"
      sha256 "d747257492613135d3fe9e4e654abef1a573d7f51c7c73723c4d123fffde3bc6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.3/lightdash-cli-3.169.3-macos-x64.tar.gz"
      sha256 "8442995ea665447d4c5213205343c2f5ec9cde1407fa3ab22bfc3eb973bd0add"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.169.3/lightdash-cli-3.169.3-linux-x64.tar.gz"
    sha256 "2dbea6b21e3655d16afdfb4d5b9d3ab03095432b053c38ce2ed596acd624cc1a"

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
