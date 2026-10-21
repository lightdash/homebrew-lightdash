class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.9.0/lightdash-cli-3.9.0-macos-arm64.tar.gz"
      sha256 "447fbf1e998a952b0015cce942e321118af0fd2403c02401ad4030087329e5cd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.9.0/lightdash-cli-3.9.0-macos-x64.tar.gz"
      sha256 "a4b9c1d6ad2da3e0abae2af589d99911851413cc1645c39f93ae7527b7fa2afe"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.9.0/lightdash-cli-3.9.0-linux-x64.tar.gz"
    sha256 "86f9ee06ead2733133248c4bcc25273aefd2744161afb8b57e5c1bc6239a30ce"

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
