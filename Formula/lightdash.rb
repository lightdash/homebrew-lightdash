class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.293.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.293.1/lightdash-cli-2.293.1-macos-arm64.tar.gz"
      sha256 "d60715f4e36720dd8f06b28b1e926c439ce9f9805b1395e624389502a6207312"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.293.1/lightdash-cli-2.293.1-macos-x64.tar.gz"
      sha256 "e427fcf2e03c7e06bb21e3d992f0190efd9ac2ee77a6ae4c78d259d32893d1c5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.293.1/lightdash-cli-2.293.1-linux-x64.tar.gz"
    sha256 "cc442b6cde22ac73876c186519c3faf008d92d1be9b363a50caf702f3f0e016f"

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
