class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.308.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.308.1/lightdash-cli-2.308.1-macos-arm64.tar.gz"
      sha256 "aefa8ced1496def6dbd80167e43752e7deb69b1b252de1d6c9580edc97f514bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.308.1/lightdash-cli-2.308.1-macos-x64.tar.gz"
      sha256 "e81800c56fe41d3c7fbfc40631d48121ad085091a7452719128c3213d5ce327e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.308.1/lightdash-cli-2.308.1-linux-x64.tar.gz"
    sha256 "04282c16a5c001ca8ca4669dc04b230d56f9e5c2781759fd49fa61b4850eebaf"

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
