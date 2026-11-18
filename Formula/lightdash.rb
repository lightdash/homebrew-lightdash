class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.311.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.311.0/lightdash-cli-3.311.0-macos-arm64.tar.gz"
      sha256 "a1360d1ba1d66623edcf1e659f7cecc7025b260e944946f375577041bf8ff926"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.311.0/lightdash-cli-3.311.0-macos-x64.tar.gz"
      sha256 "7ddb03eb873d0a2c0b1923d18a29ea6ca81e8f75d81b80f8af8ff5e5c6b9806b"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.311.0/lightdash-cli-3.311.0-linux-x64.tar.gz"
    sha256 "1afbb109b8695bbcb7f387667ac48b776e8b7675cd075b5ab3865f875a170f03"

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
