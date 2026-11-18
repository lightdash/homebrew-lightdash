class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.322.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.322.0/lightdash-cli-3.322.0-macos-arm64.tar.gz"
      sha256 "e18ccaba026abda0d7a3572db837f6eea89b537fe67f63ffb3d8244d871131be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.322.0/lightdash-cli-3.322.0-macos-x64.tar.gz"
      sha256 "8ef27a89f5cafd9a45d21dccd4f1db4bec1a88901a99676fcd4115a259df56eb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.322.0/lightdash-cli-3.322.0-linux-x64.tar.gz"
    sha256 "da49da0367b1071bcb20a2c4193d939ffaf182a918101ef44b7f46a2e7b82b35"

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
