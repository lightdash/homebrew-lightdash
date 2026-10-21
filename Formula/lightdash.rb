class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.17.0/lightdash-cli-3.17.0-macos-arm64.tar.gz"
      sha256 "5a6a31066dde73b63fb6542602877a613d52629b4fc666d20094685c9d6e12a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.17.0/lightdash-cli-3.17.0-macos-x64.tar.gz"
      sha256 "fe0154d7dc0526423a50e5818a3a074c2fcc6c72eab32d708905625d2c27fa71"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.17.0/lightdash-cli-3.17.0-linux-x64.tar.gz"
    sha256 "cf8c9800032d8a4cb2a6d5d114cfe03902906adf99fa752e7d047556f68b3771"

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
