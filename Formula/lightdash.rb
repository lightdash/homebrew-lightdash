class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.613.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.613.0/lightdash-cli-2.613.0-macos-arm64.tar.gz"
      sha256 "e13e51b8e8d602e762006e43f940d4b87fad793b02661770d2ea3802b453bef6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.613.0/lightdash-cli-2.613.0-macos-x64.tar.gz"
      sha256 "75495388f4737b49cde6671b7cc91aaf289974ecded133722fc6864e21cbc9fb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.613.0/lightdash-cli-2.613.0-linux-x64.tar.gz"
    sha256 "f89f05501fbdc3cce34cf693d024ee049bb49591d2cb7d8a66ae23b2167b3b8e"

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
