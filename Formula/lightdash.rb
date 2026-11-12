class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.234.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.6/lightdash-cli-3.234.6-macos-arm64.tar.gz"
      sha256 "27c52b187a3d1c19d4ede4fb09f137c90835b86e0c57bbb2b4f670bf17953070"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.6/lightdash-cli-3.234.6-macos-x64.tar.gz"
      sha256 "a60da2046078ac6e9a13b30d1ef29676d94fc8e92e0c00716660beacc62bb555"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.234.6/lightdash-cli-3.234.6-linux-x64.tar.gz"
    sha256 "128d36f1d3d6f44d3d5827d53db36b979f306d499f1892e6b0afcc68658f13bc"

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
