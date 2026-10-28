class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.92.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.92.1/lightdash-cli-3.92.1-macos-arm64.tar.gz"
      sha256 "cfb2c51e37434e7630a97fce836cd9f7edf8880c24b1aa169403697de9148360"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.92.1/lightdash-cli-3.92.1-macos-x64.tar.gz"
      sha256 "f9ed6367f7be09552dc4ad1eeca2be1043ce770f992100fbbb1695067c72dd10"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.92.1/lightdash-cli-3.92.1-linux-x64.tar.gz"
    sha256 "2c3c13ff86d4a5a5d13120f02098c5ba472181edb63877122cece3846f8f49e4"

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
