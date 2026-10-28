class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.78.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.78.0/lightdash-cli-3.78.0-macos-arm64.tar.gz"
      sha256 "d1f89b1bc1b1fa4f9359cc123a6bfd2c0e1b04729142f6e12896bf15f652bacc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.78.0/lightdash-cli-3.78.0-macos-x64.tar.gz"
      sha256 "8e652933096f32bd90093df6bda12c8a7d4a6768323a6bd46a10881bbe5d06b6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.78.0/lightdash-cli-3.78.0-linux-x64.tar.gz"
    sha256 "50a01cbe41f03807c676d8844756f82489bfdfba7a8bc58a69ab80fe36e343ee"

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
