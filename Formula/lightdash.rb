class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.531.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.531.0/lightdash-cli-2.531.0-macos-arm64.tar.gz"
      sha256 "015d9c8e227f821db0ccad17fc7aba1971fb30e0e996eae965160d5f44069a45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.531.0/lightdash-cli-2.531.0-macos-x64.tar.gz"
      sha256 "2ca52540b71f206d9766124c2f5c1f8301d27913ed4b6d157629d6b041ef145f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.531.0/lightdash-cli-2.531.0-linux-x64.tar.gz"
    sha256 "ddfbe90a6f68b7cc0dcbe5639ac4f0fe23250b2e1534ac19b5c51a1e737594e6"

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
