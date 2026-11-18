class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.308.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.308.1/lightdash-cli-3.308.1-macos-arm64.tar.gz"
      sha256 "8b5d6e966f8ea8313061967d65ddc908ff394abb338e42eb198eb02c076ab3c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.308.1/lightdash-cli-3.308.1-macos-x64.tar.gz"
      sha256 "0f92bdb6acbfdb787390fc469e82cd83913f914e0e98204800c78cb8a21d2464"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.308.1/lightdash-cli-3.308.1-linux-x64.tar.gz"
    sha256 "84ad99a53f3d9eb32e12895c7e7505c28d76017d278db2c6d4a4ab6e24badeb2"

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
