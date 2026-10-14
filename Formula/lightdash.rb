class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.578.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.578.1/lightdash-cli-2.578.1-macos-arm64.tar.gz"
      sha256 "dac790a31d30ff49e378c9c5a1edd1b01591f151fa68819aa43aa19f7e69c783"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.578.1/lightdash-cli-2.578.1-macos-x64.tar.gz"
      sha256 "159c0573df15f81679349595c379114a86484f2fb128aae6a499f219c5126160"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.578.1/lightdash-cli-2.578.1-linux-x64.tar.gz"
    sha256 "82571d633f261b14addc1426bcb283f487ebc2d81b0e71b11f43ce5c3074f69d"

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
