class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.44.0/lightdash-cli-3.44.0-macos-arm64.tar.gz"
      sha256 "4db11da41e57aeb08f8efbe89b2d514cb2da30d6b573d9751a220b43c5b17c82"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.44.0/lightdash-cli-3.44.0-macos-x64.tar.gz"
      sha256 "04b32cbc2ad9dc5e7880572e48d5d7ae9e40127fffb66cb2882b26d32822cfa3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.44.0/lightdash-cli-3.44.0-linux-x64.tar.gz"
    sha256 "82193f1b453172244f7ddeb58cd6fb9162b82db2d7cc70106325acf091d5b0da"

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
