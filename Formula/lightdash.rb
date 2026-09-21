class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.2/lightdash-cli-2.286.2-macos-arm64.tar.gz"
      sha256 "f8fd1d529b5632bb4c84174dbcd588d1cda9b8ea4da2dce4a5ef04de80ae2f03"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.2/lightdash-cli-2.286.2-macos-x64.tar.gz"
      sha256 "f9ca4cc5a33ee7367672899b4efbc30a9c2c9e684c0e01929898b1cf07532ade"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.2/lightdash-cli-2.286.2-linux-x64.tar.gz"
      sha256 "d3d56a0d8789f16db09445e02fb920477b68ab86ea8031cc60531791dd6d6e9f"
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
