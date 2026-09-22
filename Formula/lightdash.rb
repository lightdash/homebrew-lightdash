class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.291.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.291.1/lightdash-cli-2.291.1-macos-arm64.tar.gz"
      sha256 "0493c2352cc5b7d6d25afd0a32225163b7a9f639b008564ef9d1b8249b7bbc94"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.291.1/lightdash-cli-2.291.1-macos-x64.tar.gz"
      sha256 "154dcacfa20a9cb31525191edbe22a076f765aeec782e438ec7c91ed92011172"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.291.1/lightdash-cli-2.291.1-linux-x64.tar.gz"
    sha256 "213620262e9b9bb61ae5225c2d3f9a1a2fad184733035657cd75c0717c2e6cd1"

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
