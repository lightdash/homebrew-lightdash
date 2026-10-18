class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.603.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.3/lightdash-cli-2.603.3-macos-arm64.tar.gz"
      sha256 "a72ec0db19c68b1ccf93086766eb7cf8b2ad4c000d8bb849e394cdf388a02250"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.3/lightdash-cli-2.603.3-macos-x64.tar.gz"
      sha256 "dbd91907332ccb4a3f4eb844f46b6b1c16f95784cff58f1e6f9a81d2b11e2f1f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.603.3/lightdash-cli-2.603.3-linux-x64.tar.gz"
    sha256 "2680bf74e73fc8fce0e549df03b9b9c2f31ad25fd8ccb84b7a4586b767e3bbe7"

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
