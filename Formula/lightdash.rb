class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.288.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.3/lightdash-cli-2.288.3-macos-arm64.tar.gz"
      sha256 "2a4e7064bd4a306a477578d55313f70974ddefd18b4c8625a5f9c8f23df3c404"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.3/lightdash-cli-2.288.3-macos-x64.tar.gz"
      sha256 "e666a191411e14a89cf6ddfa425faeec378b41915a54e9a6317e819b41f4d9f0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.288.3/lightdash-cli-2.288.3-linux-x64.tar.gz"
    sha256 "85b12bc96e356bf37d2d3fb1c01ca98eba6cb6177a0c73ff3dd01b1ea24c7bde"

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
