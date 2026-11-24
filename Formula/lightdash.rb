class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.384.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.384.2/lightdash-cli-3.384.2-macos-arm64.tar.gz"
      sha256 "d960f5cfc8c53ea581b6ee33c1fdf4d2f474e8ea2e5d24544f098247922784ba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.384.2/lightdash-cli-3.384.2-macos-x64.tar.gz"
      sha256 "c3d0ca0a8cb887434960991d4a9608fd5d6ad0eee22eee66bc07b45a3ececce4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.384.2/lightdash-cli-3.384.2-linux-x64.tar.gz"
    sha256 "15eb87af6d798ba2ba658066f978fda40d1a15f263c40228c4d3b5622d79f80b"

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
