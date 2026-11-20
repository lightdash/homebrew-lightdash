class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.357.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.357.2/lightdash-cli-3.357.2-macos-arm64.tar.gz"
      sha256 "684fea1ed5bdee053ae57275ef33a62d9c617c70ef2c02b7f5be40fec56b3f6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.357.2/lightdash-cli-3.357.2-macos-x64.tar.gz"
      sha256 "5a635e3e0a5876b88e610191501968076302afc7d1b0a83351c1553c6eab2825"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.357.2/lightdash-cli-3.357.2-linux-x64.tar.gz"
    sha256 "d8b96feaea9552641201176bc51422746110af0bf206aa6786ec3bbdbfc9a4d0"

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
