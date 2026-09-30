class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.391.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.391.0/lightdash-cli-2.391.0-macos-arm64.tar.gz"
      sha256 "aa9cbe3d8c07823cf3953147b63e5e470443a469d0c2c2b43d1f8bfd12197f7c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.391.0/lightdash-cli-2.391.0-macos-x64.tar.gz"
      sha256 "9a54745b7200487000222ebee9874bb1575438dce3ca7d3895d5e9833f366a84"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.391.0/lightdash-cli-2.391.0-linux-x64.tar.gz"
    sha256 "9c4f18fc321eb28377c1f44ed3e07da13bf7e06c31e41976211003f0299260e8"

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
