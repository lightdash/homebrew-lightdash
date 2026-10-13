class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.573.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.3/lightdash-cli-2.573.3-macos-arm64.tar.gz"
      sha256 "6671520c33b344ea14a959aeab9c5409a9b539a61e4b09c3da80b3c314a15770"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.573.3/lightdash-cli-2.573.3-macos-x64.tar.gz"
      sha256 "7c64f5f9d28290006f08bc99a81b0e06c280ec81f114063b3358725a0846ca0a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.573.3/lightdash-cli-2.573.3-linux-x64.tar.gz"
    sha256 "0e0d5f3d8bf8d78526ad8e7396aa7629accc0fbf1a70aad6d53c58bfed085dec"

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
