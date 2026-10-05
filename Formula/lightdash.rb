class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.428.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.4/lightdash-cli-2.428.4-macos-arm64.tar.gz"
      sha256 "3dd52358de8aa2951fa690a0d4c96fb327b2c3a1c9a9a2658c3b3c0ba245136d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.428.4/lightdash-cli-2.428.4-macos-x64.tar.gz"
      sha256 "b838f57cda924c7389e560c5f2f527bd214a3c32efd4f742f279c3699cf897f0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.428.4/lightdash-cli-2.428.4-linux-x64.tar.gz"
    sha256 "bb7713cbbf529579a069438da7429eee631b6eae725477f54ff8f9c1a5fc830d"

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
