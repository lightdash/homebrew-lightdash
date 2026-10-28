class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.82.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.82.0/lightdash-cli-3.82.0-macos-arm64.tar.gz"
      sha256 "960afe533680c89ddd865b5efba511603d1201ede259ca975d8ab257fbf71b73"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.82.0/lightdash-cli-3.82.0-macos-x64.tar.gz"
      sha256 "f33ac4a07e357c735d6cb5b86fcb425d5d046615cf65df15308ba74a98e650ee"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.82.0/lightdash-cli-3.82.0-linux-x64.tar.gz"
    sha256 "ed5d3c71d23dde665795483157df5002aa30724229321f05e9692a471e636353"

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
