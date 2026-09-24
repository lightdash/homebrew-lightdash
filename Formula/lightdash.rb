class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.334.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.334.1/lightdash-cli-2.334.1-macos-arm64.tar.gz"
      sha256 "556735e8868de1a41ea1205c45cefce31325c960c537070afc277eddf018081a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.334.1/lightdash-cli-2.334.1-macos-x64.tar.gz"
      sha256 "2ecbb1eaaf77ebd3ae4eb196ac6d0d8487148816248b4a1e80e861f69b748ffc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.334.1/lightdash-cli-2.334.1-linux-x64.tar.gz"
    sha256 "112457f81b7bd7ac7efc0ca2b54bc37da52e4d0a3562ca8e8d3068715279b320"

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
