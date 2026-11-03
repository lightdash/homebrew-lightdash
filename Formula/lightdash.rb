class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.130.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.130.1/lightdash-cli-3.130.1-macos-arm64.tar.gz"
      sha256 "197c4d14731b121ab10ceb8e77d8a0d92fb9b16805cf125f1ad5ae40b3d2a6c1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.130.1/lightdash-cli-3.130.1-macos-x64.tar.gz"
      sha256 "acc31e0a0cdf9ad2af636dd6ed954c3284df1e10c2eaae3d4db4663aa2b32ef4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.130.1/lightdash-cli-3.130.1-linux-x64.tar.gz"
    sha256 "aa094ba9c57d6bf9b7416fe06e8648dd6dfb69d3d149e25b5c91a448ad462a26"

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
