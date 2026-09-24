class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.323.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.323.1/lightdash-cli-2.323.1-macos-arm64.tar.gz"
      sha256 "6cb16f436781049810aae72a4312778cb3e9d168d249b5d118f34dcac9d53185"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.323.1/lightdash-cli-2.323.1-macos-x64.tar.gz"
      sha256 "e63b3df456217d3b8d14ea8269addb811b65b5e049c14fa53fb9ce507e2ec153"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.323.1/lightdash-cli-2.323.1-linux-x64.tar.gz"
    sha256 "ba38d9af2c92f644b32e1cfd2149b0128090fe09f430f72a89e9dedf6ae160e6"

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
