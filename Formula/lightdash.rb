class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.300.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.300.0/lightdash-cli-2.300.0-macos-arm64.tar.gz"
      sha256 "6bbb76d7e4fd8286aff422c48eb0c31645107c0a3626effa71e86bcbba17097f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.300.0/lightdash-cli-2.300.0-macos-x64.tar.gz"
      sha256 "3b7e13c54b57dd98c77100f54a1b4840f7402b4f47ac7369a9658de1dccee633"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.300.0/lightdash-cli-2.300.0-linux-x64.tar.gz"
    sha256 "4805bc0ae091578bfb7389518baf8c00a87198e021badb6e232ee7d8708a18ec"

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
