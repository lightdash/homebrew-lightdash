class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.272.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.3/lightdash-cli-2.272.3-macos-arm64.tar.gz"
      sha256 "bdc51ecd185388c2bed4074bb4b810abfd07ccbad094d04a925a9c908d5748f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.3/lightdash-cli-2.272.3-macos-x64.tar.gz"
      sha256 "9cbf99bae7391a561aa2597ba34479a4db9feedac817bd35677b49610a29dbc2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.272.3/lightdash-cli-2.272.3-linux-x64.tar.gz"
      sha256 "80d096f07c17269066e8ecfa26ad125d1e10bf7679dcbdeb4193d23d55b745d0"
    end
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
