class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.396.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.396.1/lightdash-cli-2.396.1-macos-arm64.tar.gz"
      sha256 "b09012df9f4cfa2192bf503a22776b0af49c1a0353f02ce04b76683e82b94268"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.396.1/lightdash-cli-2.396.1-macos-x64.tar.gz"
      sha256 "c8ff6cf34e9f5381f08811ec01f81ac483640b5baa936b59dc4cc9fc6efd18e7"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.396.1/lightdash-cli-2.396.1-linux-x64.tar.gz"
    sha256 "872c60294da25cd7fe91dc0c794e5024897d5f6e774f676cf31ce06e854684f0"

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
