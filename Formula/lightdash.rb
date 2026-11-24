class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.379.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.379.0/lightdash-cli-3.379.0-macos-arm64.tar.gz"
      sha256 "1850570257f12d80a0ab4fd9aa76d41215055cb1c979c09f271bb064141a9581"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.379.0/lightdash-cli-3.379.0-macos-x64.tar.gz"
      sha256 "e5fbd5c3a9c8b6ddde5d628712ba61bbe59ef7be351b813f8da9125a5869bb4f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.379.0/lightdash-cli-3.379.0-linux-x64.tar.gz"
    sha256 "2b2a4c68ebed1caadc5cc1ae720875a6197eede7d000700be9817b604f279705"

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
