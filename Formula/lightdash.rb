class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.507.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.507.1/lightdash-cli-2.507.1-macos-arm64.tar.gz"
      sha256 "85d72c7ca37993760419ea84ba36eab408a887d914ac5deba454f26f44c83986"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.507.1/lightdash-cli-2.507.1-macos-x64.tar.gz"
      sha256 "cf4fd64477505d144fd50d36291ed273c8582999ffac1c4007f883b44a03ee55"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.507.1/lightdash-cli-2.507.1-linux-x64.tar.gz"
    sha256 "ab27ee7edfe266bafb8e742874644e59375b8ac43ad5ed3d91c2a54ecc54325b"

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
