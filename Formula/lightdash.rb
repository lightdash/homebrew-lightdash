class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.558.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.558.0/lightdash-cli-2.558.0-macos-arm64.tar.gz"
      sha256 "8717b97ee08485d849e98217cbe48d4f9b3a29848cb87823b69e7f6ab6fb9c70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.558.0/lightdash-cli-2.558.0-macos-x64.tar.gz"
      sha256 "0388d497e45e10dc9b41001bfbcba5c020f42f7c82466858fcf5dcea1bc41ffc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.558.0/lightdash-cli-2.558.0-linux-x64.tar.gz"
    sha256 "370a82c18d89086850da15847c7ed4e22c454d2e4fdde2851ba8442651a6c6e8"

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
