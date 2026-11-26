class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.415.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.3/lightdash-cli-3.415.3-macos-arm64.tar.gz"
      sha256 "50205c82b7bacca11ed252ed905efec51d43fbc093b2ff8b1562938d0ccd4990"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.3/lightdash-cli-3.415.3-macos-x64.tar.gz"
      sha256 "abf36910e8d8621c13bb7077c578b5ebe21e9ec29606b0b20f4f09b6f09fd0e1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.415.3/lightdash-cli-3.415.3-linux-x64.tar.gz"
    sha256 "a58a829fbef116993feab9c58f7ae1ec69d999a02d8dcaacbfcec178ce356d11"

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
