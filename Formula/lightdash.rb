class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.371.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.5/lightdash-cli-3.371.5-macos-arm64.tar.gz"
      sha256 "29ad62480a3ad2dd99b585b8f788ab04aca67b034282083cb2f01b4c04b2a0cc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.371.5/lightdash-cli-3.371.5-macos-x64.tar.gz"
      sha256 "405c7dc97493c6abd4281d8cd6b7beed9e3d3b97d14f1eb06d45493822457b23"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.371.5/lightdash-cli-3.371.5-linux-x64.tar.gz"
    sha256 "d64b8e8a325c3a486524bd18b81504fb1768448014999f1b648a76a33dc12230"

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
