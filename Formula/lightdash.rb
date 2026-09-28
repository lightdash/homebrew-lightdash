class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.352.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.1/lightdash-cli-2.352.1-macos-arm64.tar.gz"
      sha256 "708c5fff20d3a9efd529ac39182de15ad88bcad5f2725fe73e2ffc7e5930ba0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.1/lightdash-cli-2.352.1-macos-x64.tar.gz"
      sha256 "5d56bd5744659fea30e1021da857c8f6a64d37eb58cc4190f56f10485c40f0ce"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.352.1/lightdash-cli-2.352.1-linux-x64.tar.gz"
    sha256 "77a12403e41f37f606feed5c308406a507f81f6297f28e27ed9bf35ada52721f"

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
