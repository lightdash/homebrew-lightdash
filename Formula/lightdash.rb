class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.4/lightdash-cli-3.420.4-macos-arm64.tar.gz"
      sha256 "b312283a261ab62d4ce11cc220c731ff3d8a2c17b111d79255a443f6c1031bd6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.4/lightdash-cli-3.420.4-macos-x64.tar.gz"
      sha256 "6f198b7c723305b370f8a02f5138747252bbd802fda532840d70a435a2523e0b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.4/lightdash-cli-3.420.4-linux-x64.tar.gz"
    sha256 "a0e7dc05932befdc85191cac80348ba32269c14ae2ca72cd4a49406e3383d34c"

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
