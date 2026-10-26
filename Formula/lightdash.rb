class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.55.0/lightdash-cli-3.55.0-macos-arm64.tar.gz"
      sha256 "2c8b73a29e6750399b049263d990d001322eb2e0fc8680cf43f9eebfcb52cc87"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.55.0/lightdash-cli-3.55.0-macos-x64.tar.gz"
      sha256 "3df618eb2415dde169612e042d55687f0f35cf95bd0073b55eaafd37050a0ce6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.55.0/lightdash-cli-3.55.0-linux-x64.tar.gz"
    sha256 "18649bafe63b4df2e32375c637037889ef4cf096c983ba5aed7eced7de7b9a6b"

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
