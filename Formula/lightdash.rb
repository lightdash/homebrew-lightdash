class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.294.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.294.3/lightdash-cli-3.294.3-macos-arm64.tar.gz"
      sha256 "c1a49d767c1201033ac00013d981753f795d14b886fb91c1ff4ed9e990da87ba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.294.3/lightdash-cli-3.294.3-macos-x64.tar.gz"
      sha256 "5bdbe618b9081d296160ad9b6e380fc05d5dc1b4cc609be120d6c6de7d2f473b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.294.3/lightdash-cli-3.294.3-linux-x64.tar.gz"
    sha256 "f35e9ec6d07a451c808a992439d1a0b1b4389fc26ae8b1e5f8378f450bd6ced6"

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
