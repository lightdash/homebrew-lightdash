class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.426.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.426.1/lightdash-cli-2.426.1-macos-arm64.tar.gz"
      sha256 "111541568be69bb58022c0acefab1261490154a3e66441af15fcc0780bb75b30"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.426.1/lightdash-cli-2.426.1-macos-x64.tar.gz"
      sha256 "319e23dc3c4790aa8abcf4432cf0a2cacf9100e7042e9a9dee2846c1962216a8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.426.1/lightdash-cli-2.426.1-linux-x64.tar.gz"
    sha256 "63cd187dc18b37ba2dab4200aa0c4776cfe9c484421d828be7e986587c563895"

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
