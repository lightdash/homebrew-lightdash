class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.85.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.85.0/lightdash-cli-3.85.0-macos-arm64.tar.gz"
      sha256 "84feaa0f1e6215213c4996466a003b1e8f87326f02e7e82fb9a49aed7a7e8d6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.85.0/lightdash-cli-3.85.0-macos-x64.tar.gz"
      sha256 "6a0e7a6b9737dfd46c8f0664009b26f098ac16ab9287afa1e5d6254a72a54f28"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.85.0/lightdash-cli-3.85.0-linux-x64.tar.gz"
    sha256 "af56ffbb59e9df7245a2f65483a8fee7d8b4aa98e0a6956d8847f839d739d2c3"

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
