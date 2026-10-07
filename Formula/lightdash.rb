class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.455.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.3/lightdash-cli-2.455.3-macos-arm64.tar.gz"
      sha256 "bc93168ebf89936c71c90a8b839caa6bd3513218fdd717971d1958ed1e83c545"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.455.3/lightdash-cli-2.455.3-macos-x64.tar.gz"
      sha256 "fa607ae501f379d4d309bc0dfffcebe731859609b0f459b3198ef90a533845e1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.455.3/lightdash-cli-2.455.3-linux-x64.tar.gz"
    sha256 "c09d939bcef728dafbc0cc669bde06b656f55fa7c61835513d07ae9e466b806c"

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
