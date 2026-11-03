class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.132.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.132.0/lightdash-cli-3.132.0-macos-arm64.tar.gz"
      sha256 "ce693dc16bd4c385e73ac89df721554b045dde931be806fea5adf9eaac94cbb3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.132.0/lightdash-cli-3.132.0-macos-x64.tar.gz"
      sha256 "8bfcb8298693744fbb48de64d99309fcb268d3bc9db319e9a7f73efa0000e047"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.132.0/lightdash-cli-3.132.0-linux-x64.tar.gz"
    sha256 "06c22a8365085e5986ea67c189eaf5b53909d5ffc031ff9908d40bececcc2f43"

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
