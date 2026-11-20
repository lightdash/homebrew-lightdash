class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.358.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.358.0/lightdash-cli-3.358.0-macos-arm64.tar.gz"
      sha256 "0d56be8287b96d34a229e9cbcdc59ee1ff47818b20758d689ba4fde4134123ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.358.0/lightdash-cli-3.358.0-macos-x64.tar.gz"
      sha256 "94063e96c9500607a0b3fabb89c8f4f4437a913317078660c7b52c8add5fa42c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.358.0/lightdash-cli-3.358.0-linux-x64.tar.gz"
    sha256 "707b50118d5a2b5ef722a13a468f5d07f64da19de2c98ba201a9baaa35f2b6ba"

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
