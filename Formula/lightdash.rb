class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.37.0/lightdash-cli-3.37.0-macos-arm64.tar.gz"
      sha256 "17059be2f9de866e46a67f4e5b4c047b25b32a63d6844402dfbe67f016449d16"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.37.0/lightdash-cli-3.37.0-macos-x64.tar.gz"
      sha256 "5334614c84f74a2a6ffc533cbb034b66e986dc4b03602b8c3d3a54b40d2a1603"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.37.0/lightdash-cli-3.37.0-linux-x64.tar.gz"
    sha256 "d59cf15e7182502afeae7705ae4d15b58bb556d62cb450b6e1f7f3d086556bf7"

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
