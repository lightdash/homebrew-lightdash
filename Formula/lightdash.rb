class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.29.0/lightdash-cli-3.29.0-macos-arm64.tar.gz"
      sha256 "e3a1c815c2462527d60bf8aaec1a530ffbd577c67dcc1e335e0ce3439d7d7de5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.29.0/lightdash-cli-3.29.0-macos-x64.tar.gz"
      sha256 "c0571bd71a96abc401bdc60d1d90b2260726255a8260f253b214b9c8770b7aae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.29.0/lightdash-cli-3.29.0-linux-x64.tar.gz"
    sha256 "d1b9d88e25e986eecef7c67145f8a0e71ca94ded69ad8b6807b6e23e2caf2118"

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
