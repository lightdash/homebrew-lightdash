class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.281.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.281.0/lightdash-cli-2.281.0-macos-arm64.tar.gz"
      sha256 "3471144fe013ce1d24d809f76f4f5bd0ef768c3f66c805b580ae0736af2f6d86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.281.0/lightdash-cli-2.281.0-macos-x64.tar.gz"
      sha256 "7fe280b78d99e8aecaf6f34ba6c2f5d814230cae359d9226c87402854dcd8b94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.281.0/lightdash-cli-2.281.0-linux-x64.tar.gz"
      sha256 "2b0a3fd6194ec0cb0a1cdf8e88a2e4f0538fb4667212b2da12a0f87cb07d807f"
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
