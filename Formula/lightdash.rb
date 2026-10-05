class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.428.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.6/lightdash-cli-2.428.6-macos-arm64.tar.gz"
      sha256 "8e891ae1ddffd1d77142ed7f7e9b53445dd18d4020590387b1189a1665347592"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.6/lightdash-cli-2.428.6-macos-x64.tar.gz"
      sha256 "e98ed6f81b3f5f62c357778cf9b799e203201345b796b95eeeb74a1fd17a2584"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.428.6/lightdash-cli-2.428.6-linux-x64.tar.gz"
    sha256 "ab8e008ae8a99413c3f3e663fd46dc2d4257d9e79e00626e01267dd9c2397af8"

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
