class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.584.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.584.0/lightdash-cli-2.584.0-macos-arm64.tar.gz"
      sha256 "13bb500e8516488506781d5d047e11212b2dab7a7f245e63ae7bc732c7d2736f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.584.0/lightdash-cli-2.584.0-macos-x64.tar.gz"
      sha256 "958cfb8aa955946db48d1520de954a9671d405e1f5b00ef7e9bccdce0bc08ece"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.584.0/lightdash-cli-2.584.0-linux-x64.tar.gz"
    sha256 "463a57d73a491f126d45187c34a21b73156f62e7ddf99d0ed9cfae3a200c496e"

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
