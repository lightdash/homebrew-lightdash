class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.355.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.355.0/lightdash-cli-3.355.0-macos-arm64.tar.gz"
      sha256 "0ca3a10843b2bf1d8a562bab97d729e363947fce4e408ae35f7d664e6b346fbf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.355.0/lightdash-cli-3.355.0-macos-x64.tar.gz"
      sha256 "3aa47e860d55e9b865f58687771977f172bb1c1fbb77883e7259be6413720929"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.355.0/lightdash-cli-3.355.0-linux-x64.tar.gz"
    sha256 "309f51dedc64b0e3cd59be56c0663c594e2c3a00125f8f4c0ba316e11d9dd220"

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
