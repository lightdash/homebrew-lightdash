class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.550.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.550.0/lightdash-cli-2.550.0-macos-arm64.tar.gz"
      sha256 "ecb80a349085841f53d826daaac5fd3aeaf5f66ff1bdd7f17b397a55a243d3e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.550.0/lightdash-cli-2.550.0-macos-x64.tar.gz"
      sha256 "99381d81b60957c22c85f066994c86dede2f4fd12fbc659583ccb63c586aab69"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.550.0/lightdash-cli-2.550.0-linux-x64.tar.gz"
    sha256 "23a78c87a01ffae2a0c4e12595fbf59e628b127ec162e4e75657e920d1ac4cac"

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
