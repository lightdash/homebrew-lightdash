class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.86.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.86.0/lightdash-cli-3.86.0-macos-arm64.tar.gz"
      sha256 "ed3ad9d3c0eec3c66751b81612ed59100d343c47ef290975ad128354e924cdff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.86.0/lightdash-cli-3.86.0-macos-x64.tar.gz"
      sha256 "b1b2af8f80fc1dbe2d96cb2df43a335623719560c55e0d1ab184642ed73a429a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.86.0/lightdash-cli-3.86.0-linux-x64.tar.gz"
    sha256 "726c8093d6710f8f8f3680da27b9e1278d26887838a5be7c48c6ac89cc0f2ec3"

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
