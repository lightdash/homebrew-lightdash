class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.169.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.5/lightdash-cli-3.169.5-macos-arm64.tar.gz"
      sha256 "d0875403b9bbc610303320085b880ac8cb69b61c15e17e4f7281a9ae7226d49f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.5/lightdash-cli-3.169.5-macos-x64.tar.gz"
      sha256 "226f8d2a55468599b04ac5ff622593246969ac22b359513f15076b7e3b1ded74"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.169.5/lightdash-cli-3.169.5-linux-x64.tar.gz"
    sha256 "2be04f81148f1b8f422a7541b0156b49cabb7f577757e831e4a5aea93ca52ff3"

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
