class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.28.0/lightdash-cli-3.28.0-macos-arm64.tar.gz"
      sha256 "1000feb8986b7cc6a5a9288eb5bc1e5bc3ec5b48e0cba450a08eda619c06f118"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.28.0/lightdash-cli-3.28.0-macos-x64.tar.gz"
      sha256 "4ba0fb4270139580d8104d592e8414d6fafc0de9a71b13e17eb12a172f6042f0"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.28.0/lightdash-cli-3.28.0-linux-x64.tar.gz"
    sha256 "3bf6ca23d7d2d3eacdef60805b8bdf1ff66c93e7c9952596071c45ebfc69dd5e"

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
