class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.67.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.67.0/lightdash-cli-3.67.0-macos-arm64.tar.gz"
      sha256 "69c2e27188e2bb43f13691ca14abccf12c3db8d3849bc19449b83500a5b84fb1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.67.0/lightdash-cli-3.67.0-macos-x64.tar.gz"
      sha256 "81a24bab4b8dd68b99a7d5b466bcd5c1a91b3bc3f8ca445a84fe96ee13bb8c26"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.67.0/lightdash-cli-3.67.0-linux-x64.tar.gz"
    sha256 "0a02bf0acc44552ac2d613c463a47f2338c6c9457c94ee14804bc3e3c50e1cc5"

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
