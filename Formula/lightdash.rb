class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.415.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.7/lightdash-cli-2.415.7-macos-arm64.tar.gz"
      sha256 "ddc1fd8d99966dc381b62e8f2dfa8452e84eaceb880f10b04b6c29f8ec445919"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.415.7/lightdash-cli-2.415.7-macos-x64.tar.gz"
      sha256 "5ece2cc4c7fd7c6c11207abe22c7d20e1b8e4b8b171ea4ea929fb3021c6d2c40"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.415.7/lightdash-cli-2.415.7-linux-x64.tar.gz"
    sha256 "256c3477c09d1008d6c0268ecd15e0de52646ca515dceda1329febf107d46f5c"

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
