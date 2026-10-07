class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.455.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.2/lightdash-cli-2.455.2-macos-arm64.tar.gz"
      sha256 "ffd723e368ba3b3b30762696f79ce5b220c13ef3872d04ae5f3d50160e9e9c7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.2/lightdash-cli-2.455.2-macos-x64.tar.gz"
      sha256 "216f857ee2cf1f8da2d25c4c68b1e97794b4d2584915f52a3718fcd620f68c2c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.455.2/lightdash-cli-2.455.2-linux-x64.tar.gz"
    sha256 "fad233aba09b132e2be63463e4f52de1e74ffae7f1d6bfbc813416f7edec995c"

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
