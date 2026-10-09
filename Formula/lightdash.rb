class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.514.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.514.0/lightdash-cli-2.514.0-macos-arm64.tar.gz"
      sha256 "f8495e1ca0e11ef6b3930e51b46da6ff87c0d56ad5b7623ec80d48fec306e999"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.514.0/lightdash-cli-2.514.0-macos-x64.tar.gz"
      sha256 "de05caa26eb7455579998527ac01d8617f7043cfbf1480e0233b53946b0a9fab"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.514.0/lightdash-cli-2.514.0-linux-x64.tar.gz"
    sha256 "4018558cf4e487cee672187b333b5cf7176b16aea315e10e8ccba435b0f1aacc"

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
