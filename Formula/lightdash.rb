class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.327.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.1/lightdash-cli-3.327.1-macos-arm64.tar.gz"
      sha256 "0718d86ef9e4e3f7c67995b79da2f1ba628069ae27eb701fb2fad61e9fc3abaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.1/lightdash-cli-3.327.1-macos-x64.tar.gz"
      sha256 "a73b21054402bf63a14ed734d8f3bf454dbf49ae515583b2d6c742e804ce97ef"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.327.1/lightdash-cli-3.327.1-linux-x64.tar.gz"
    sha256 "3ac7b3ed1ae42cdfeffb24c5c30e4b89238f93fc020d36c8ed78417d7c7912b6"

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
