class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.509.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.509.0/lightdash-cli-2.509.0-macos-arm64.tar.gz"
      sha256 "a9f44a1d3c2222011bdf081d38652f05c7a4e3cf3c59a01ac6c6baf0a6ecc43a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.509.0/lightdash-cli-2.509.0-macos-x64.tar.gz"
      sha256 "f554873b4f09fca17a0d46cda28e4e74b3b46e27753e686672dadcd4c80fa9de"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.509.0/lightdash-cli-2.509.0-linux-x64.tar.gz"
    sha256 "a52473fce3e191b8e0e52440b67b1d5296858b513ebb40bf5de2f25c40bcdd88"

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
