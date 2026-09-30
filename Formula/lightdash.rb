class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.394.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.394.0/lightdash-cli-2.394.0-macos-arm64.tar.gz"
      sha256 "8f48d9a8d843fd637787be6d186840dad4b0eeceda6cf86bba5350e5b7523e6b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.394.0/lightdash-cli-2.394.0-macos-x64.tar.gz"
      sha256 "8a8b908592c8d01245ed812beabd591074510c7f2e0185e15f6f3f4299510271"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.394.0/lightdash-cli-2.394.0-linux-x64.tar.gz"
    sha256 "915ac06984f66dcf4424a47ed42a497b6d8b5401c75ab406180d9969978a09d8"

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
