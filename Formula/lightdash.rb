class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.486.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.486.1/lightdash-cli-2.486.1-macos-arm64.tar.gz"
      sha256 "240d32cb306eb5c5dcb84bad7a9cd7776f348415a02807c21ce3cce0a8d1a133"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.486.1/lightdash-cli-2.486.1-macos-x64.tar.gz"
      sha256 "b51270b26310cdeb6acb6a7f6a014a258329f3e532888879a2b5cd9e7b7c9129"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.486.1/lightdash-cli-2.486.1-linux-x64.tar.gz"
    sha256 "c20cdd2efb5bafb9cbec1de548edbae44bf28dcfef17cac5b3d502757d1dd9e6"

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
