class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.79.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.79.1/lightdash-cli-3.79.1-macos-arm64.tar.gz"
      sha256 "e590b86aae08898d124faf0f16bb1b5675ef0e28bc0b970a9019e26575c998d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.79.1/lightdash-cli-3.79.1-macos-x64.tar.gz"
      sha256 "dc92df37d2c5896d098311019d09715bf7afb07438b5d05e3b091ffad58c2c7d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.79.1/lightdash-cli-3.79.1-linux-x64.tar.gz"
    sha256 "0cecbe047f36b0e7e8572652bc42e396d84d5b798d95da949608fc24100f5df2"

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
