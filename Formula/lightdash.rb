class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.496.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.496.0/lightdash-cli-2.496.0-macos-arm64.tar.gz"
      sha256 "314cd986a45473e4f0ff4ef82bd9fda5b7fea183f4398aa05833423daa4422c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.496.0/lightdash-cli-2.496.0-macos-x64.tar.gz"
      sha256 "fd4db338dac89b110c338766c3e69491c14d94bc8b962ba1a0cfb5d8e2a5fb67"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.496.0/lightdash-cli-2.496.0-linux-x64.tar.gz"
    sha256 "5fa70e91dc196f27d738acf4821e5f1a1e0ee3dba937c0d29e177dbb08e502f0"

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
