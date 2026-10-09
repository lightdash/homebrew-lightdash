class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.515.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.515.0/lightdash-cli-2.515.0-macos-arm64.tar.gz"
      sha256 "aea64c26ad4d3824226cc32a6d42b47d5fd8e5f6b36bf2ef1f7edc25f648792b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.515.0/lightdash-cli-2.515.0-macos-x64.tar.gz"
      sha256 "61e5d06d8ef61389af7784b23eb89b8bde754c2b7d91eca3e803845186dbd242"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.515.0/lightdash-cli-2.515.0-linux-x64.tar.gz"
    sha256 "6cdcaa210f03c5b77e3b2a03976f32d152a9fa44f87faea71ba4a61c63d15c7d"

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
