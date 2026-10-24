class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.6/lightdash-cli-3.53.6-macos-arm64.tar.gz"
      sha256 "183efc702187be6b08524580d3bc646618a4d0b1036523ce6a91f53df77f5856"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.6/lightdash-cli-3.53.6-macos-x64.tar.gz"
      sha256 "ab3e63c36edda2ebaaa4fe09c2fdeaac93463ff282736b9ac9b9ec072bc3a412"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.6/lightdash-cli-3.53.6-linux-x64.tar.gz"
    sha256 "2979d765c5bddd856e3c7bebd685fa30cfaa203d6e2ca14aafbd14a612c97d3b"

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
