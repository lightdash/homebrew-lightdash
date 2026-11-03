class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.136.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.136.2/lightdash-cli-3.136.2-macos-arm64.tar.gz"
      sha256 "bca0543ee2859b0225359bfd454248e3b868733a689a33cdaa5c5390a35d59ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.136.2/lightdash-cli-3.136.2-macos-x64.tar.gz"
      sha256 "723a32f51da55ddd23a054902b17a082633c733f51d68c07d09eb01cd90745e6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.136.2/lightdash-cli-3.136.2-linux-x64.tar.gz"
    sha256 "d24923ce1b252d1cf6cd7d79293b1b42de5ca7789cc6e3954c31d15be8e2bc49"

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
