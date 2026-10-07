class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.463.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.463.0/lightdash-cli-2.463.0-macos-arm64.tar.gz"
      sha256 "9d2517452b9d0e39daaa8ef6e82e5efcb7ad25c2d22cac08bc27dcecf3903752"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.463.0/lightdash-cli-2.463.0-macos-x64.tar.gz"
      sha256 "79fdae64956d8f88c5b6e47e1b70bb02323aa0a737a68356fd521fdd8abfb0b6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.463.0/lightdash-cli-2.463.0-linux-x64.tar.gz"
    sha256 "7926cc82e99a621aa0f620830f30eb3d179a71f6c9da40ead449c685c0a06bff"

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
