class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.591.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.591.0/lightdash-cli-2.591.0-macos-arm64.tar.gz"
      sha256 "4e7e05d12fb3b0c6b14250b5886024123e6ebe92839b4dcc1ecd661f494c88e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.591.0/lightdash-cli-2.591.0-macos-x64.tar.gz"
      sha256 "dccca3d161f1d9fc08b099dbffa62c9194db007ff48c57e31da57f32ab1a4357"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.591.0/lightdash-cli-2.591.0-linux-x64.tar.gz"
    sha256 "bcf29f69a8e206f23e5610db5f339294c7cc132ebc31548b7a2d103675967901"

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
