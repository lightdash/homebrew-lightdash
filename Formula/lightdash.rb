class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.415.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.0/lightdash-cli-3.415.0-macos-arm64.tar.gz"
      sha256 "3b6cff79e6583daf91e2936737952e82f0456dd7a8fad444cb5c7a3858352b18"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.415.0/lightdash-cli-3.415.0-macos-x64.tar.gz"
      sha256 "3c4fd94cd03c94bcce398e19bd82833567f61a79671f43521b1395d09d8dec7d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.415.0/lightdash-cli-3.415.0-linux-x64.tar.gz"
    sha256 "e702eb72b8e55deaafb72cfaf89b598fd7448b341ddacb0c1797171a1be4104f"

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
