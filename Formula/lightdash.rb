class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.187.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.187.1/lightdash-cli-3.187.1-macos-arm64.tar.gz"
      sha256 "ef32b9a24369061430e9991b1f627c46565c8d3d59292c4b96827b3d9ef5ddeb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.187.1/lightdash-cli-3.187.1-macos-x64.tar.gz"
      sha256 "d7726a0dde884f98176ae8384bcd63144b997ca463a01a7169e49ea8033b4f9a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.187.1/lightdash-cli-3.187.1-linux-x64.tar.gz"
    sha256 "aba059fc17d227a8834790fe7ac1cb7aaeaa30ec183de2fe82f572b7fc3974a5"

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
