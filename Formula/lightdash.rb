class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.383.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.383.2/lightdash-cli-3.383.2-macos-arm64.tar.gz"
      sha256 "e49655e61e0d495cde4886a7af2240e7e9801dcbd056acc2f43883525bf74a53"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.383.2/lightdash-cli-3.383.2-macos-x64.tar.gz"
      sha256 "d23ba191a8101111cd8089a3f53bb4f883cbe66b4bd329d276c61f78ce3b25e5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.383.2/lightdash-cli-3.383.2-linux-x64.tar.gz"
    sha256 "81771b0f053073483af7cfe6459940ed360f432e3ab33978075cc37ddf7a51c5"

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
