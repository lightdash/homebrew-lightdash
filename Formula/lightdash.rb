class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.129.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.129.0/lightdash-cli-3.129.0-macos-arm64.tar.gz"
      sha256 "7ec92a4a3dc9757d40655651c937034a5a6d649c71352cb1cafa8293499e1024"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.129.0/lightdash-cli-3.129.0-macos-x64.tar.gz"
      sha256 "ecc5d3e1db2427dbde27a46b88cc18c96ccd7da705b3695d89687aedcd9ad6e6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.129.0/lightdash-cli-3.129.0-linux-x64.tar.gz"
    sha256 "05c40908be58f2b38d54964553913d1401fdcf5143d71e3786ad525d9812ec64"

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
