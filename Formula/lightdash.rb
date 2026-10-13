class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.574.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.574.0/lightdash-cli-2.574.0-macos-arm64.tar.gz"
      sha256 "75eceedfa8fa32995f580507425a035a5cfc3c0fd540f3081d06f67e49f2d9ce"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.574.0/lightdash-cli-2.574.0-macos-x64.tar.gz"
      sha256 "ed00410221d2f18ae1b25f7afd2ad46e7cf0227e952328b38408a94b9b0be2a5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.574.0/lightdash-cli-2.574.0-linux-x64.tar.gz"
    sha256 "4f9679b21dbf15c3a305443972d8a594bf8ab9350c0c0cf3f78e9cf8d40f87ef"

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
