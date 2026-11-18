class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.304.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.304.1/lightdash-cli-3.304.1-macos-arm64.tar.gz"
      sha256 "b98ef3ba4d667f34913f905feec6a2bdf831beadd13228aa64fb31ff5416f5bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.304.1/lightdash-cli-3.304.1-macos-x64.tar.gz"
      sha256 "e7f007edddc6d667f55f81c2cfbd4d3f11b2209d97b1acd69e65342622d13c20"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.304.1/lightdash-cli-3.304.1-linux-x64.tar.gz"
    sha256 "114b7dccdc04a41f1c68b47ce8c661daea21d67a9bbbc5ae424b036723eb751d"

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
