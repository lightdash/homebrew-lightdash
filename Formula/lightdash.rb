class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.551.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.551.1/lightdash-cli-2.551.1-macos-arm64.tar.gz"
      sha256 "c427fc6eefafbf6381f2683519bb8efdf6489ce969091407ef921d43020aa878"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.551.1/lightdash-cli-2.551.1-macos-x64.tar.gz"
      sha256 "bcc756dd1693153045339f61cf5f0e3f3a1d78275370a875f33d87d62ca556d4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.551.1/lightdash-cli-2.551.1-linux-x64.tar.gz"
    sha256 "281bb181eb87d8d26e54df4b1ad981b056ae0292f20f0ac4792640c4f3494ecd"

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
