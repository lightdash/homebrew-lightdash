class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.405.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.9/lightdash-cli-2.405.9-macos-arm64.tar.gz"
      sha256 "afcc7f5572641624b29eb26e160fa6d151fcc585dc2c1c3212e136d9874574a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.405.9/lightdash-cli-2.405.9-macos-x64.tar.gz"
      sha256 "114c0de5d67fa30a4a55fec7de1bfdff239b36064ca024e3ecfbcdf342693a4a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.405.9/lightdash-cli-2.405.9-linux-x64.tar.gz"
    sha256 "c6ac6188e8618f31368e4c8f81db911917a0825de7dfda93966d18211d7db69a"

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
