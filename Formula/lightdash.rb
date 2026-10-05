class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.427.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.0/lightdash-cli-2.427.0-macos-arm64.tar.gz"
      sha256 "7ac074314d9cf6c92436018dbe94d5cc2c5517aa6c38f8ec77da298c8a06cf15"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.427.0/lightdash-cli-2.427.0-macos-x64.tar.gz"
      sha256 "0aa92fad61038d4cba7236e7f26ba2ab05f32abd0d2b0046b7a80aaf9bdea791"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.427.0/lightdash-cli-2.427.0-linux-x64.tar.gz"
    sha256 "fbde4ec330488e0af8d667ce49896fdeb1eeb80c07b78d8aa2e642a5ce35cd5f"

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
