class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.69.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.69.3/lightdash-cli-3.69.3-macos-arm64.tar.gz"
      sha256 "b13614ea3260bd21d7e80554de514511a6be01b3d55c99186ac421577bb70f6d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.69.3/lightdash-cli-3.69.3-macos-x64.tar.gz"
      sha256 "5fa618c1b8cbddd4d14dcf2dc5cc90db151bfe25e500a71e11b08e0a61e281ce"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.69.3/lightdash-cli-3.69.3-linux-x64.tar.gz"
    sha256 "a400666cf459a9c8f3bfbb751576f54e08b73f4c2650d3a33cd362dd746490ee"

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
