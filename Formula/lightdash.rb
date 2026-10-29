class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.93.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.3/lightdash-cli-3.93.3-macos-arm64.tar.gz"
      sha256 "017df918e1eb47af06eddfa283389f573a50c74f99220096493f7bc4fda4bdaa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.93.3/lightdash-cli-3.93.3-macos-x64.tar.gz"
      sha256 "37ca9f1bea41cc15874f2ae4eb927ae51b7a1a345cdf5773d5462e75e3fa5c6d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.93.3/lightdash-cli-3.93.3-linux-x64.tar.gz"
    sha256 "a5f1f228734be506f055798c28e5b91d276e2ef20908a07706b3fc7462f697cd"

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
