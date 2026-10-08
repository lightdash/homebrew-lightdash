class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.481.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.481.2/lightdash-cli-2.481.2-macos-arm64.tar.gz"
      sha256 "b2cb1e046038499605c8aaf38d3183bc95ea383909af9c738a17d032c009938d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.481.2/lightdash-cli-2.481.2-macos-x64.tar.gz"
      sha256 "51f06d080f6c3a2fd02daf2f2c0ee34c9041497d8be8c43abf802c2fcbb749a1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.481.2/lightdash-cli-2.481.2-linux-x64.tar.gz"
    sha256 "13ac02cb8eb9394c0f7cd99ebdda2a9dbd86705637866e11d1aa55a119c7dd53"

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
