class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.151.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.151.0/lightdash-cli-3.151.0-macos-arm64.tar.gz"
      sha256 "f279c08f6cd3ef9562e2ef464f4bb435bafb32d1780b5a6eeb7cba565df5a2f0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.151.0/lightdash-cli-3.151.0-macos-x64.tar.gz"
      sha256 "5d69fd7477ce0026965e34ccacbd0591976f7f327cc55d13f1c3ae5cd7f83413"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.151.0/lightdash-cli-3.151.0-linux-x64.tar.gz"
    sha256 "c7e6b8b21fb43a25d4be5ceaf602bd9fe9dcb338c57b0885e4bc8c2954e60e7f"

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
