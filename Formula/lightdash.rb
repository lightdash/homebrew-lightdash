class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.352.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.5/lightdash-cli-2.352.5-macos-arm64.tar.gz"
      sha256 "b5afe8f7a0b10b8b666feb737d3158fdc1e820d5bd85ac3bbf78333dbd02d040"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.352.5/lightdash-cli-2.352.5-macos-x64.tar.gz"
      sha256 "c536f03048e414d41a26666d580e8aab1497d91c42b7ec91b2d16252e32208ad"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.352.5/lightdash-cli-2.352.5-linux-x64.tar.gz"
    sha256 "4ad660fadd2d61dbf2a5f39a31ff99ba1db8d6cf4ad40ba36508e4f085b998ba"

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
