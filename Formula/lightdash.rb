class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.335.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.335.0/lightdash-cli-2.335.0-macos-arm64.tar.gz"
      sha256 "0b7f99806d19c28efc15ece12b77dfe8f2e04c5d8fbb8dddb6539c9f2ece6324"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.335.0/lightdash-cli-2.335.0-macos-x64.tar.gz"
      sha256 "c82cf2dde56772103465ec02783c00ce019b8eafbd67337baae45ef626a25687"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.335.0/lightdash-cli-2.335.0-linux-x64.tar.gz"
    sha256 "45d0b54232cef70e2dad193bc489e976b005e7ba4ecd6c344f9c68eb8dfa3616"

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
