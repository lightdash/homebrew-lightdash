class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.387.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.387.0/lightdash-cli-3.387.0-macos-arm64.tar.gz"
      sha256 "74e60fe457aa72f9c767e6332dc69234350e73c7125eddb22954396667ae2cec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.387.0/lightdash-cli-3.387.0-macos-x64.tar.gz"
      sha256 "1cbfd127028b13362bf142121d8674c9918a61613affc1e0b377e401a75d1208"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.387.0/lightdash-cli-3.387.0-linux-x64.tar.gz"
    sha256 "5098fe29fa05a083bb6a70eaf562586c783fdbc1ca5a6985d909e5a20f4a5ae9"

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
