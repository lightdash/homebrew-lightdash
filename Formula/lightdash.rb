class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.18.0/lightdash-cli-3.18.0-macos-arm64.tar.gz"
      sha256 "f4a1111babe8f174dec06b276bcf9daa7b40b89ec83fa8560bb1ced508f14a69"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.18.0/lightdash-cli-3.18.0-macos-x64.tar.gz"
      sha256 "7e8b70c0a37c5de80621a7fd13705b9afa244edb8d126f76f28ef943192acdc6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.18.0/lightdash-cli-3.18.0-linux-x64.tar.gz"
    sha256 "31104f4a54d20fe8294c98a22be9189a532c0f06a753e13aae0c4f9f0bde4caa"

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
