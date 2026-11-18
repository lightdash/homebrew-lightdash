class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.317.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.317.0/lightdash-cli-3.317.0-macos-arm64.tar.gz"
      sha256 "8d0bca6974a5ed9eb915f8c0383da06a433218188f5a14a0c7b83f41bc0ed5da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.317.0/lightdash-cli-3.317.0-macos-x64.tar.gz"
      sha256 "46ca67f15909dc27e4c9dae61b661e2eb290409c827baa986a3aa06e64550539"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.317.0/lightdash-cli-3.317.0-linux-x64.tar.gz"
    sha256 "492102d53fa5486fc52b5f616be038712262a1d3d8af7c00fe7fbf76aebe1138"

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
