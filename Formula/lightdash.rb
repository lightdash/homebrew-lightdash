class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.547.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.5/lightdash-cli-2.547.5-macos-arm64.tar.gz"
      sha256 "f106f14fa5303f81fe4014f035379d56c812b85d1ed166006e74e42a4043620b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.547.5/lightdash-cli-2.547.5-macos-x64.tar.gz"
      sha256 "b692bf9143a2eb37c4e863c1bae8da937acbb77ab791e4974329a960c2415175"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.547.5/lightdash-cli-2.547.5-linux-x64.tar.gz"
    sha256 "c2672e81e15913f5637fc448eb513cea92a60dcfd2ca091b837fd8d34e1c7131"

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
