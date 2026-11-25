class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.406.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.406.0/lightdash-cli-3.406.0-macos-arm64.tar.gz"
      sha256 "3e4e80ee94e5fb0efe6cdf46f69245574ebf7398d07d7e406aaf417f5ff2b317"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.406.0/lightdash-cli-3.406.0-macos-x64.tar.gz"
      sha256 "fb7bc95573dc5d99d8a5c3f53cf50b24f34bb947ba767c8731af1f3ce94b7d90"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.406.0/lightdash-cli-3.406.0-linux-x64.tar.gz"
    sha256 "8741d047c718bf144162a588214066a655acb37e6756b0fdd30e6b77ccd913d8"

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
