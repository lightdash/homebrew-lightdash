class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.3/lightdash-cli-2.606.3-macos-arm64.tar.gz"
      sha256 "a81d2bebbc3f6d489ef1c0c7e8fb02772d99c7c724110e697687cab707bf53ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.3/lightdash-cli-2.606.3-macos-x64.tar.gz"
      sha256 "e3eea60e05142e9f73a3728b18ee83e81a64738ce3fa26c1135cfe0b7dbc5d9c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.3/lightdash-cli-2.606.3-linux-x64.tar.gz"
    sha256 "a6b546d2e1ee65b075f24e0e5f20106e7d72bde0f725f18e7116d83fcda5b9b9"

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
