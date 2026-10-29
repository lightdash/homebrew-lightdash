class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.98.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.98.0/lightdash-cli-3.98.0-macos-arm64.tar.gz"
      sha256 "464aa0fb3b0e91ab29b4e11aac7814c1aec8199c3be26171d963fe5e877d01c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.98.0/lightdash-cli-3.98.0-macos-x64.tar.gz"
      sha256 "6d56568e34408b620d811659b8a5dfcbfc0c2f529f345d1768b54b6e837887cb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.98.0/lightdash-cli-3.98.0-linux-x64.tar.gz"
    sha256 "4074694670cd536a44811e82df9f339d57d8a09a7fe41f16a1744a22f9ca4ef7"

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
