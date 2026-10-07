class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.458.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.458.3/lightdash-cli-2.458.3-macos-arm64.tar.gz"
      sha256 "450a88b4f94f02502a7dd300aac18c9f91aab2431285547293f0d312fd558a09"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.458.3/lightdash-cli-2.458.3-macos-x64.tar.gz"
      sha256 "2969c468af19abea3e82a3a76bed7646b90e10b908f9b607f3839347c600478a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.458.3/lightdash-cli-2.458.3-linux-x64.tar.gz"
    sha256 "e5f26d2f7343c267aae2f882d424e9cb2bf13fc72cc497db63dcbd29e11f4c82"

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
