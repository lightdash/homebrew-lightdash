class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.568.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.568.1/lightdash-cli-2.568.1-macos-arm64.tar.gz"
      sha256 "6c8a17e4b53a4524bd6f28c7bf41b82bbc1223b59d5c16fec082d8926c3d3a09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.568.1/lightdash-cli-2.568.1-macos-x64.tar.gz"
      sha256 "0cef604cad667b343f637db108f3c118b2d9e118a471ca7c26525433a65c9f04"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.568.1/lightdash-cli-2.568.1-linux-x64.tar.gz"
    sha256 "8e3e2e8ef18d7a86192bfaf98d8249308216b22323e9dc9ee6ad5dccb02ec69d"

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
