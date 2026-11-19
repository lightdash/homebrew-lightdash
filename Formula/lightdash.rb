class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.340.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.340.1/lightdash-cli-3.340.1-macos-arm64.tar.gz"
      sha256 "6c519d7903645ea6551d681c853bda1c307fda9e8656fbe256dd85c940b2c3cf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.340.1/lightdash-cli-3.340.1-macos-x64.tar.gz"
      sha256 "52de0484f7c51419ea77aefb54229ffe96c28857538bfaf3f5f2d5cd14359883"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.340.1/lightdash-cli-3.340.1-linux-x64.tar.gz"
    sha256 "258abd8bab6a02abccffb6b768683e99e64c555e4af236303fdf61d4935159d5"

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
