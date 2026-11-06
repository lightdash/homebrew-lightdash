class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.169.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.7/lightdash-cli-3.169.7-macos-arm64.tar.gz"
      sha256 "69d2d0a1905b05b850b8e6a0b9d42e30d5d2f81c4930f908b4443362b7a0315e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.169.7/lightdash-cli-3.169.7-macos-x64.tar.gz"
      sha256 "39636f204c4e06429bfbbe1d2855f8178de7bfc53c8a64563fab3a93f6fa7c5a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.169.7/lightdash-cli-3.169.7-linux-x64.tar.gz"
    sha256 "828906bdc1950f26124d07aa7894c6fe3cd2099fa64c2abe782a0e64f073596a"

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
