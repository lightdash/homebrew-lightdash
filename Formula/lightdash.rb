class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.0.0/lightdash-cli-3.0.0-macos-arm64.tar.gz"
      sha256 "d57e7beaa8502928f3b36c4ca185c0ec36e9d14d3a30e4c60a2dbb5383e7e248"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.0.0/lightdash-cli-3.0.0-macos-x64.tar.gz"
      sha256 "06c34fbeca6aeb18fb048e0b4e5e815f1d90436d29205bb4f38a26ed09cc9031"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.0.0/lightdash-cli-3.0.0-linux-x64.tar.gz"
    sha256 "207e539d8629189ede73090e02f106d0a52fdb4beb41e382dd3f8e5a901d7302"

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
