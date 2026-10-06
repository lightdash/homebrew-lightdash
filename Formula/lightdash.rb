class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.438.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.438.0/lightdash-cli-2.438.0-macos-arm64.tar.gz"
      sha256 "32d79809d7a6a5203f5659ea53d734acc2425b7ad9e406f7485691db1f71472d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.438.0/lightdash-cli-2.438.0-macos-x64.tar.gz"
      sha256 "244f88d7cc81bfedf9699ff8ad310077bef2d38b8fef681baad66a0094fadb9f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.438.0/lightdash-cli-2.438.0-linux-x64.tar.gz"
    sha256 "60fb6b7a6442e92db49cbd46a52279a2c67e81f84443ab415db9bb947ef56f32"

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
