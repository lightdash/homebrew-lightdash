class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.572.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.572.1/lightdash-cli-2.572.1-macos-arm64.tar.gz"
      sha256 "c465a79d34e016d9d4b1b4f47ac985981e36285bdea16654343901d35caf5751"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.572.1/lightdash-cli-2.572.1-macos-x64.tar.gz"
      sha256 "89c86996fdebbe6bbfd27e5b52a498ba4799ff0b0e73f308228316711440653a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.572.1/lightdash-cli-2.572.1-linux-x64.tar.gz"
    sha256 "16a7cc17040e49af8a28543b57afd20fdb1e5d2e445886e8c8db2886a883298d"

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
