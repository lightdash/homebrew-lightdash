class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.171.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.171.0/lightdash-cli-3.171.0-macos-arm64.tar.gz"
      sha256 "dbaa4e7ff27099c7a6dcf73d31c23499214bc1008b0f36b675ed5e4b739831f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.171.0/lightdash-cli-3.171.0-macos-x64.tar.gz"
      sha256 "37157b2b116a71f5fa100aae1cc8b9e0603e3147d346a58be5647155167ee0c4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.171.0/lightdash-cli-3.171.0-linux-x64.tar.gz"
    sha256 "af2c7d286ad3ad43e6b74909a005799453179a491fbd72d79e717389d9308b97"

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
