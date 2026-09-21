class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.6/lightdash-cli-2.286.6-macos-arm64.tar.gz"
      sha256 "fd832474361abb1298d2c5bf4627c3c0e4b170e6ba744b931f78a86135cdd700"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.6/lightdash-cli-2.286.6-macos-x64.tar.gz"
      sha256 "fa9496b9f496a8aefc1ce8056f9befd3b1aa237e40549a3d8c45b078e281622d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.6/lightdash-cli-2.286.6-linux-x64.tar.gz"
      sha256 "eb642fed6f8f7d62860c34b4f8c43e6663f6e6b6ee10142f71e8484df9641843"
    end
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
