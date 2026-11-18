class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.319.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.319.0/lightdash-cli-3.319.0-macos-arm64.tar.gz"
      sha256 "59f9c131ed32860dd347a816662c931868f91904458e43870431e9908af2f443"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.319.0/lightdash-cli-3.319.0-macos-x64.tar.gz"
      sha256 "1973d34a797e3ed3fb9d9e391114967224674e0b38840a513fb5a295a427437e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.319.0/lightdash-cli-3.319.0-linux-x64.tar.gz"
    sha256 "5197eeabd75ee43b2f6ab306665aec92014aec4c0d6b8b896e367f8b9dd2d03b"

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
