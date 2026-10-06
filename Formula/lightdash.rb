class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.448.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.448.0/lightdash-cli-2.448.0-macos-arm64.tar.gz"
      sha256 "9666d94df48027095e9f807d967d381b7b467ba21a195e7c03e9e1a477067a09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.448.0/lightdash-cli-2.448.0-macos-x64.tar.gz"
      sha256 "5b0884ddd8c6a8061f48572371b96eee5db8d7eac08730aa54cc4442975d9be5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.448.0/lightdash-cli-2.448.0-linux-x64.tar.gz"
    sha256 "eae4c5a632cd374cee4b1cd2c25733158e12610ac00cbeed32c841c27260fa5d"

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
