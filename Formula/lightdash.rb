class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.68.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.2/lightdash-cli-3.68.2-macos-arm64.tar.gz"
      sha256 "bd2167591ca502221794a2baebf30c3de7db0bcc0cff2fbe1ffa0ab762ff0260"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.68.2/lightdash-cli-3.68.2-macos-x64.tar.gz"
      sha256 "38c3c2365df7966d73973228458d4a8d0ba36b8a120c0f9815b85d78b36f7dae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.68.2/lightdash-cli-3.68.2-linux-x64.tar.gz"
    sha256 "88c167179b125b8b546d068f74e5c8095aaf9d0b70e5520596a4b8cea728c9b8"

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
