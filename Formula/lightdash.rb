class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.356.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.356.1/lightdash-cli-3.356.1-macos-arm64.tar.gz"
      sha256 "90d751bf185e357ab13969c8af0ddc21600921f54714087c66de7b4e618b737b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.356.1/lightdash-cli-3.356.1-macos-x64.tar.gz"
      sha256 "1495b9af4c58b27b7124c98da724cc2a9c0a430f94f2f002929b123afa60ed41"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.356.1/lightdash-cli-3.356.1-linux-x64.tar.gz"
    sha256 "fbf1d7cb0d9f9d84538ace6f9e644b719ec7b58dd9b72ed9eb1c95aa69ff7c52"

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
