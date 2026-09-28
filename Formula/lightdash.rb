class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.358.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.358.0/lightdash-cli-2.358.0-macos-arm64.tar.gz"
      sha256 "54f33a2da09d98774c63684d5f200dbb279c4002a3aba0085a28005239916a33"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.358.0/lightdash-cli-2.358.0-macos-x64.tar.gz"
      sha256 "19db344ef75fb2d1258cb3c3ad9cacd4b37e0dfa9792938c29dbb72c9fddd920"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.358.0/lightdash-cli-2.358.0-linux-x64.tar.gz"
    sha256 "d41ef8ee577be34a306dc875d2a130fed4ba1536fc807d431f674be60df913d1"

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
