class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.22.0/lightdash-cli-3.22.0-macos-arm64.tar.gz"
      sha256 "bdd97956941f4adc9f477d5eb85cb20c7122970586a823665dd7d1bf6e44aed2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.22.0/lightdash-cli-3.22.0-macos-x64.tar.gz"
      sha256 "100e30d15d87bf38c3ae57feea7318578dd3c340a3791283e49d796005ce4cef"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.22.0/lightdash-cli-3.22.0-linux-x64.tar.gz"
    sha256 "737cda81e096bc176fef9cfbaad1505b42c28f63604b5b29901499bc2b922489"

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
