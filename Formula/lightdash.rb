class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.185.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.185.2/lightdash-cli-3.185.2-macos-arm64.tar.gz"
      sha256 "17dc1cbb7780d8c541dbabb3167d41478d3f15657a9662f2cd35596f56634837"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.185.2/lightdash-cli-3.185.2-macos-x64.tar.gz"
      sha256 "8036ccbce120f4f46ddef7b88525e5adcc329e2d864eb27de179ba54348cb46e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.185.2/lightdash-cli-3.185.2-linux-x64.tar.gz"
    sha256 "ab57d8252b0117abdc47bf85c6ab25f1221c85f8bb907b15248a9caed727b9ce"

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
