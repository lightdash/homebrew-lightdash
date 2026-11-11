class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.213.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.213.2/lightdash-cli-3.213.2-macos-arm64.tar.gz"
      sha256 "4e4b11a1e8cb5fdc732b6d8e29926bb2d55066316a441d629f8fc6b927363d8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.213.2/lightdash-cli-3.213.2-macos-x64.tar.gz"
      sha256 "087f5a80f821dffb3e82bd4ccb5171ddbc9500e5a6b7feb2e5b4ca8be456ef15"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.213.2/lightdash-cli-3.213.2-linux-x64.tar.gz"
    sha256 "aa8cd615fdffa5d6b88f15f5b8cc29cd35ef4ccaf4579a3d2bf7312fcb71530a"

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
