class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.479.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.479.0/lightdash-cli-2.479.0-macos-arm64.tar.gz"
      sha256 "98fa9e45342a6bbf9149aeb89ffbedd04b4e75c17d5cb6b137b7d3217e737346"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.479.0/lightdash-cli-2.479.0-macos-x64.tar.gz"
      sha256 "db14812938ada86e02c7df1d29a3acf430bdd68e28ea7945f8dc7f2457bbc205"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.479.0/lightdash-cli-2.479.0-linux-x64.tar.gz"
    sha256 "0243ef108f89aced9462c23ae0e12a6a84eebf7d8a5330309877873a569358ee"

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
