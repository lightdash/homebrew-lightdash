class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.525.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.525.0/lightdash-cli-2.525.0-macos-arm64.tar.gz"
      sha256 "06d0db0b8a0b59cde88e5106cd1b27ce591bbcf7d3000e0a9796e15cb9b22dc7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.525.0/lightdash-cli-2.525.0-macos-x64.tar.gz"
      sha256 "617882ff463293fea24afaaec2bdf9129c23fc580712bd3759f14f30eed86518"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.525.0/lightdash-cli-2.525.0-linux-x64.tar.gz"
    sha256 "03875457c359e1783a41213168f9759309c3d7c3f5eabb595147615d7bc59f6c"

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
