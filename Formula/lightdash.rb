class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.544.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.544.0/lightdash-cli-2.544.0-macos-arm64.tar.gz"
      sha256 "32827e7b0ac0916d2a0820be0ba75a77e32ad8addd3e5647b6ce0d3df158eac2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.544.0/lightdash-cli-2.544.0-macos-x64.tar.gz"
      sha256 "628661acd38e1d45e92c820b7ec4d7c32ff70207457f4a1b75f7e6b1afdc06f9"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.544.0/lightdash-cli-2.544.0-linux-x64.tar.gz"
    sha256 "87eaf1bedf2b68a78f4fa6d5e68fa6a20189b2fef99df676d23c17790df2aa01"

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
