class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.589.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.0/lightdash-cli-2.589.0-macos-arm64.tar.gz"
      sha256 "0d8f4e9b3a9f0a8ed690d05591905f19a71f464ba69a8a8a370cc07f2962edae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.589.0/lightdash-cli-2.589.0-macos-x64.tar.gz"
      sha256 "42ffed8f09fba8b789e622584de381aaf3602d13c51ec13018b6157849c92b1a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.589.0/lightdash-cli-2.589.0-linux-x64.tar.gz"
    sha256 "6cd2be906fc66bcd0c17adb3606405807a0f58343b687665b087d12229dda1a3"

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
