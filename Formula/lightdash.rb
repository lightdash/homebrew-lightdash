class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.127.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.127.1/lightdash-cli-3.127.1-macos-arm64.tar.gz"
      sha256 "4a824d94ab1ef1c743b78a038d2c426af62c58aa62ccddee3b0c0d072600aff2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.127.1/lightdash-cli-3.127.1-macos-x64.tar.gz"
      sha256 "9948953db822cd1887d6bce93feab7697c780c87af7dd71c48b6939c6d2ebbd2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.127.1/lightdash-cli-3.127.1-linux-x64.tar.gz"
    sha256 "ed332cb30939c3b9a6a4e0ad6686f8737db3ca5c8d4b07cb4d61493094cd51ce"

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
