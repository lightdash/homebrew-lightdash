class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.603.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.0/lightdash-cli-2.603.0-macos-arm64.tar.gz"
      sha256 "a928eba51ee015557a1f38a381de152c97c161147d5f165a38731c5fb591a53e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.603.0/lightdash-cli-2.603.0-macos-x64.tar.gz"
      sha256 "77511139cc1143f8580b1896b261f7c0332bb606dc1aec02ec2e3b387b99c2f4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.603.0/lightdash-cli-2.603.0-linux-x64.tar.gz"
    sha256 "4ac555b45b1557a3bca9ac38e17d5ee71aeabf774b70aed2b70d912512662310"

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
