class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.322.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.322.0/lightdash-cli-2.322.0-macos-arm64.tar.gz"
      sha256 "ad3e4f8599ed637b6f12b28c419b040ccef2995ddac3d3aa9cf399b5829675af"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.322.0/lightdash-cli-2.322.0-macos-x64.tar.gz"
      sha256 "926f169667783898ff1fba77f75d5aa999ed2aae7745251c38b2424f9f434e50"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.322.0/lightdash-cli-2.322.0-linux-x64.tar.gz"
    sha256 "e914a5eb5648a8627f221713946deeda057e5b62bd19700a88ca7a6189f7fff1"

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
