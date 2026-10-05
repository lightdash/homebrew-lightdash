class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.435.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.435.1/lightdash-cli-2.435.1-macos-arm64.tar.gz"
      sha256 "72bc113260bd255733a1a3d2d129693f9c3af658200f9c8b6134a15a77973337"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.435.1/lightdash-cli-2.435.1-macos-x64.tar.gz"
      sha256 "f8d27efb65fb2dd1b72a33de0447fa535af05bd1d71f5e50e698ccc0692fdfbd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.435.1/lightdash-cli-2.435.1-linux-x64.tar.gz"
    sha256 "6e7207be6696ce23a9ef9c5d71b4097902ca33b9a0ed79807531fdaee9df8e4f"

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
