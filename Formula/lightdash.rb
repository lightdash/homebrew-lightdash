class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.595.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.595.0/lightdash-cli-2.595.0-macos-arm64.tar.gz"
      sha256 "309769c67515ca82857186be20b5495ba4fa86af01e968e2a917cdb2b220804b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.595.0/lightdash-cli-2.595.0-macos-x64.tar.gz"
      sha256 "daa3e9b1c935bdacd5fa29a46e229449a02ad667cc413ca12e04bbd92aa4d916"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.595.0/lightdash-cli-2.595.0-linux-x64.tar.gz"
    sha256 "edb5cf0ea2e77bafff37609a1ddb9a4ffa7b95a7f7bada7619643db52120e956"

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
