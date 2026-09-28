class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.356.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.356.0/lightdash-cli-2.356.0-macos-arm64.tar.gz"
      sha256 "9926f7428089da2e2f27526c83f9fe723eabef16121d5de89b6e2a698abaa1f2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.356.0/lightdash-cli-2.356.0-macos-x64.tar.gz"
      sha256 "3ed95d05a0ccedac4c84686e98e939430d24edc67f0ea6b236e10a446848872e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.356.0/lightdash-cli-2.356.0-linux-x64.tar.gz"
    sha256 "39eeb9ada1532ac21044f5cf9c1d7acd61cdd5349661fec192b435421aab92e0"

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
