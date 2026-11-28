class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.449.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.449.1/lightdash-cli-3.449.1-macos-arm64.tar.gz"
      sha256 "989497232ee71a12d6e06d4461fb10b71a1a80ba373ca4be3de0f8e18b211f86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.449.1/lightdash-cli-3.449.1-macos-x64.tar.gz"
      sha256 "46b797f486cc85c7e5c52950fda7682bd027dd43e9ac52b46f12f81d940e5b36"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.449.1/lightdash-cli-3.449.1-linux-x64.tar.gz"
    sha256 "0a7f8f8719176c3d7290a137dfe152c8b5152583cb664f8438ff5be4ce8c8085"

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
