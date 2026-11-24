class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.385.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.0/lightdash-cli-3.385.0-macos-arm64.tar.gz"
      sha256 "da7871e9b0a4a5d58d2f90c00af0d518bb5cd5db6a698f570fb735809fcd482d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.385.0/lightdash-cli-3.385.0-macos-x64.tar.gz"
      sha256 "74056ebeed7a9ea3f09d3d1b10f83befc8f31d762d2c98b0e74a908b40f2900f"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.385.0/lightdash-cli-3.385.0-linux-x64.tar.gz"
    sha256 "a4350fd18b4315c4d993696824908c20ebb1de27f5f3cd3c56315c7557e6f3be"

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
