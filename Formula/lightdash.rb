class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.197.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.197.2/lightdash-cli-3.197.2-macos-arm64.tar.gz"
      sha256 "bb59d2823d4a07c0000be2bcebd94be416782efe25b55754e6b041eb01bf21a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.197.2/lightdash-cli-3.197.2-macos-x64.tar.gz"
      sha256 "b6eebf3b977ff4358a91dfdd73f5e43aa4ed2b0a7f11afd00a7b7b85151aa825"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.197.2/lightdash-cli-3.197.2-linux-x64.tar.gz"
    sha256 "4ff84aa2452227a31679e15b9484fd2417a42a65d9ba628811eb30b8c6e609ad"

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
