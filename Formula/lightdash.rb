class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.234.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.0/lightdash-cli-3.234.0-macos-arm64.tar.gz"
      sha256 "90f7e5aa346afaf6a78683bcfaa4c0f25eca74e0c90969f608c8f6a971a4edc7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.234.0/lightdash-cli-3.234.0-macos-x64.tar.gz"
      sha256 "81a947152adbfe43afef9f09352c777a595bb5bb5a6da958ae5367ee4e09ac92"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.234.0/lightdash-cli-3.234.0-linux-x64.tar.gz"
    sha256 "0cc83e97c1fef9bacba9f31d492c24dbb6d1058e6a51427a55611a1cd755d11f"

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
