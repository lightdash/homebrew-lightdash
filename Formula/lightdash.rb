class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.485.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.485.0/lightdash-cli-2.485.0-macos-arm64.tar.gz"
      sha256 "3f0e5c0ed2c6f87839a1a5b1e4d4d7a52e80a4346e179ff8864d3c6b1fa450c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.485.0/lightdash-cli-2.485.0-macos-x64.tar.gz"
      sha256 "adb56ae1194ae4f80eadf4026d8f267c5d2ab1d3f38bd86c62f85ea2326275a5"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.485.0/lightdash-cli-2.485.0-linux-x64.tar.gz"
    sha256 "909f805afb30fda73489a23ef47c637ef4a7fe8c8482a5a01e0fde5c3b4a87e0"

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
