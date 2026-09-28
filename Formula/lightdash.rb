class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.360.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.360.3/lightdash-cli-2.360.3-macos-arm64.tar.gz"
      sha256 "17fece7e8b67fe48287cf7b0de1fb9c8671d3e83bf8e2ec8ac8e6bcf4e6daf3e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.360.3/lightdash-cli-2.360.3-macos-x64.tar.gz"
      sha256 "23a41a9c7a21bbcf761c2d51ed9b3efd3a5a221bf5e90f3d7e9d694aeb83a0e1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.360.3/lightdash-cli-2.360.3-linux-x64.tar.gz"
    sha256 "6369029dad12702c97d2d52ff7263ea90dd42bf8d7891884b58b25eee77f1a2e"

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
