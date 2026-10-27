class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.65.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.65.1/lightdash-cli-3.65.1-macos-arm64.tar.gz"
      sha256 "7a2b28a98964f2e0d728cee8da0cb90f6ccbf90c59b149500485d1dbbd993d0f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.65.1/lightdash-cli-3.65.1-macos-x64.tar.gz"
      sha256 "55c2144f141d99dd7770c1b4365cf2954defe24f8327a79fb16d40d76173c82e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.65.1/lightdash-cli-3.65.1-linux-x64.tar.gz"
    sha256 "252c4edbd5e829fbb6f063686db49e48c27666597b27eeedc404fb65b40ca256"

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
