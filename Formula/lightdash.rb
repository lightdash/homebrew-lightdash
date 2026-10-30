class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.114.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.114.1/lightdash-cli-3.114.1-macos-arm64.tar.gz"
      sha256 "aee5060eaa1d3a561fd890da8f92910febc5c4319327f0ef02e4f35ad6894db3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.114.1/lightdash-cli-3.114.1-macos-x64.tar.gz"
      sha256 "38bf3a197f29e573413cf83354b73f88aad2308890fb38923f98baf39e8cd653"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.114.1/lightdash-cli-3.114.1-linux-x64.tar.gz"
    sha256 "c9ac5d4a47028baf64f36090e6b4f630a58a0de7dd759ee051a17ec48f160b58"

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
