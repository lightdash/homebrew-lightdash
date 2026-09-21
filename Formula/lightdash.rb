class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.284.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.284.0/lightdash-cli-2.284.0-macos-arm64.tar.gz"
      sha256 "dd1dbbfa19436fd1a773481eda286dbfa5edaba321f96cce6f5effdc197b1c5e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.284.0/lightdash-cli-2.284.0-macos-x64.tar.gz"
      sha256 "e26b16cbf5a2ba55941976dd410fde3cf702fa4db29f66a4528e1c0d51783c5a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.284.0/lightdash-cli-2.284.0-linux-x64.tar.gz"
      sha256 "f1fc7c96f14f04bc79879187faf566256e3160702df34445487b7adb2f0b00a6"
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
