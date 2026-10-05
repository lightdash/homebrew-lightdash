class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.426.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.426.0/lightdash-cli-2.426.0-macos-arm64.tar.gz"
      sha256 "39cd472525f5a30b0e6e0378d995e487e19e3a45007855e07b0d7a763ddcaa67"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.426.0/lightdash-cli-2.426.0-macos-x64.tar.gz"
      sha256 "7539ae7954e5121f37fbd65ae132f81cbac949f4cc7facd8733f0b52e03bf7cd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.426.0/lightdash-cli-2.426.0-linux-x64.tar.gz"
    sha256 "1d231aceede4eb2ed9d69d7cd11f688d2b3424bc68c4b109cf9a10ad85ed6f01"

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
