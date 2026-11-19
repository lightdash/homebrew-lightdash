class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.337.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.337.1/lightdash-cli-3.337.1-macos-arm64.tar.gz"
      sha256 "25ee02a556c3304d7679a9582a6ff11c5ca0bbe72ae874e11fbf908b5b4dca8a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.337.1/lightdash-cli-3.337.1-macos-x64.tar.gz"
      sha256 "2a42ba7678c23159cc4aea46c2b9944d671bee980514e368daa2c82a38d67584"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.337.1/lightdash-cli-3.337.1-linux-x64.tar.gz"
    sha256 "438d22376d799f33ae1ca687a88a661efd19150a821a6fdf33ad36b825e90d9b"

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
