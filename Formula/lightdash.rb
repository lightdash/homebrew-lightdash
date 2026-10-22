class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.26.0/lightdash-cli-3.26.0-macos-arm64.tar.gz"
      sha256 "cfc8e9241ca96d796d2dd49db9928c5afc8134d68060c6c664ae650d6c9caab8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.26.0/lightdash-cli-3.26.0-macos-x64.tar.gz"
      sha256 "b470acbc9e0f4952b3353120c3fe7952e35c62efe86c2584b914d7db4b9fba75"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.26.0/lightdash-cli-3.26.0-linux-x64.tar.gz"
    sha256 "6ad0b5d5369bc5dafe8bdc3f5972d393bf03ddecba69541bdb12b22c1dbe02e5"

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
