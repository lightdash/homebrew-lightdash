class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.620.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.620.0/lightdash-cli-2.620.0-macos-arm64.tar.gz"
      sha256 "a5b7a63ea4e47564c0e9c3afbec3927e070892766d2b643d61a757337ccf6fcb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.620.0/lightdash-cli-2.620.0-macos-x64.tar.gz"
      sha256 "67ff6569b4f8241ad285fc3e86fa8ed9748953ccb94db294ce7c348bb7914784"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.620.0/lightdash-cli-2.620.0-linux-x64.tar.gz"
    sha256 "1389f86bcfea2e3ec16107c067563bda9e716f9335e1232ecb3499e8227e39a3"

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
