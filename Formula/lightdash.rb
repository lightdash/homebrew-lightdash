class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.614.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.614.1/lightdash-cli-2.614.1-macos-arm64.tar.gz"
      sha256 "eed88c4a0dcc4b0c12684eddb7ed7fb7a8fa77c6fe46b05afaa1dc7f5279719b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.614.1/lightdash-cli-2.614.1-macos-x64.tar.gz"
      sha256 "ff9d7bd72e4a4a5be706832d5e7092ec01612836781acbcbe188f106b7bdec5a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.614.1/lightdash-cli-2.614.1-linux-x64.tar.gz"
    sha256 "7cc59986e2eddb9c226c6660691313e2cdbe553246e58289c58287f28b8774dd"

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
