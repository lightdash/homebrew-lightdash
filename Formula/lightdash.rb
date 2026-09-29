class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.361.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.361.1/lightdash-cli-2.361.1-macos-arm64.tar.gz"
      sha256 "dcba5eec6ffbe2ddc64430453ac6fd592cbb3e6b989d8dffce747c9b1cc81c66"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.361.1/lightdash-cli-2.361.1-macos-x64.tar.gz"
      sha256 "4c3f2c23b6086d96c60cef6fc907a99439002d8340ed37b7d140f21350d0f379"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.361.1/lightdash-cli-2.361.1-linux-x64.tar.gz"
    sha256 "303d06a5ddbc1d3eeacf88dc734d5644c6abd2f9f82bc530df591b93b9765850"

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
