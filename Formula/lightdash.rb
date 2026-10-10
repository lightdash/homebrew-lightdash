class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.547.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.1/lightdash-cli-2.547.1-macos-arm64.tar.gz"
      sha256 "c5210258a1e487a5d83ffbc606203daf09e7e5d3cfd815239d6f41d7f943b0e7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.1/lightdash-cli-2.547.1-macos-x64.tar.gz"
      sha256 "611ca2d30113867a42fc569ea45542fa7399c5708eed07d3fe5abb2bfbfb10bb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.547.1/lightdash-cli-2.547.1-linux-x64.tar.gz"
    sha256 "cac3934e2593cdb7169ba3e357d129c74e4c20222a26aba1c234e3e534c83148"

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
