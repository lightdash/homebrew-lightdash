class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.360.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.360.1/lightdash-cli-2.360.1-macos-arm64.tar.gz"
      sha256 "b4a0937fc839d2f3f355ce572dd440e318bffb94cb4f464c028baaa2de22078c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.360.1/lightdash-cli-2.360.1-macos-x64.tar.gz"
      sha256 "4b7e9f969f0fce320f22dd7598c57232d936c065facc9e1d6e6301eec3f01ea9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.360.1/lightdash-cli-2.360.1-linux-x64.tar.gz"
    sha256 "c0f9e21ab28634108ac4f0929ac047aee5550a41a9b6fc89b995b71eba31ee29"

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
