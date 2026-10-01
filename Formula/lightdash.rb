class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.400.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.400.0/lightdash-cli-2.400.0-macos-arm64.tar.gz"
      sha256 "954f280058b2141cbc9435b191fa49072cac12c92eee1efba76cc54448b7210d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.400.0/lightdash-cli-2.400.0-macos-x64.tar.gz"
      sha256 "4a6fcd4c6f424d725fe75a5939c9845d90e0719a5cc2fd2d935f9749c866d15d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.400.0/lightdash-cli-2.400.0-linux-x64.tar.gz"
    sha256 "495897b0517e55265a4eac8bfc6f7f1a86f5a2b513125693c961f451533e37bc"

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
