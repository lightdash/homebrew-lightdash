class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.275.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.275.0/lightdash-cli-2.275.0-macos-arm64.tar.gz"
      sha256 "5d820a06d8c53bd7e09822fe42e4cf5dcf19fec13a5e54e1f8fbf1114f2ae03d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.275.0/lightdash-cli-2.275.0-macos-x64.tar.gz"
      sha256 "49172c49cee6a6e4e11969b1e4caee8d5ea8c77deb6a1aece277d141c7929b06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.275.0/lightdash-cli-2.275.0-linux-x64.tar.gz"
      sha256 "5c5008a4b0ef3f7adf4fb12a26ed34ca6d7ca8b032f964b699cf295e888b1e8a"
    end
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
