class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.311.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.311.0/lightdash-cli-2.311.0-macos-arm64.tar.gz"
      sha256 "6d5a322661ab91033a1a6190464be1e996ebb27dacc163153b89127f23855bf9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.311.0/lightdash-cli-2.311.0-macos-x64.tar.gz"
      sha256 "de68c19fcf813283e0539234b5e47cedfb2e305020d75b30ae7ea62fcc8b7a96"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.311.0/lightdash-cli-2.311.0-linux-x64.tar.gz"
    sha256 "0ba8a04e837d10e36f5d3d96544405dfcf6223a6adc50b60e44902295f72bd50"

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
