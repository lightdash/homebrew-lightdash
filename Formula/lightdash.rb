class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.411.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.6/lightdash-cli-3.411.6-macos-arm64.tar.gz"
      sha256 "9c94a896c22025d8b69a1a276562ed0bd3f6f4f571ad269dc49318a9c14df464"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.411.6/lightdash-cli-3.411.6-macos-x64.tar.gz"
      sha256 "0e28e0ae58237faa144cdb7230cd61ee80d5a9bfe133836bf7246c29dfc46ac1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.411.6/lightdash-cli-3.411.6-linux-x64.tar.gz"
    sha256 "b4abe72ca880b733f0f2870d59638294a45efce7402ebca6e30c90dbca5699ee"

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
