class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.123.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.123.0/lightdash-cli-3.123.0-macos-arm64.tar.gz"
      sha256 "16c895d459cf7bd9d8933888bf7a9c202b01013d76628c1ab8e3f7a5ab5e4752"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.123.0/lightdash-cli-3.123.0-macos-x64.tar.gz"
      sha256 "32f186117270029a6cb6eb83a5d64caffca2ff22402f0fd1a0b5a6425755da35"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.123.0/lightdash-cli-3.123.0-linux-x64.tar.gz"
    sha256 "056375218bb4ec9169a148a4c7e54d1a527037cce0602961d011724ac3e39089"

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
