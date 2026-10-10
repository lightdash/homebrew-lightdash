class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.539.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.539.0/lightdash-cli-2.539.0-macos-arm64.tar.gz"
      sha256 "4990f69b751987f637041b6d1d214a0f13be8dd2b79cb5c30f456238c258b4db"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.539.0/lightdash-cli-2.539.0-macos-x64.tar.gz"
      sha256 "2280a9e74dc9afb9cb16efdfbc4c665092b4f6b2e299d85b9e70cadba990f686"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.539.0/lightdash-cli-2.539.0-linux-x64.tar.gz"
    sha256 "46795a7989758a4165d5303e046a1c72140e8677c82feb6bcc767e6c0ef56f22"

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
