class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.390.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.390.0/lightdash-cli-2.390.0-macos-arm64.tar.gz"
      sha256 "e9ab19f2ea6135d16e61f475d3b00148d77d417c00a20a3a74e208b09439314f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.390.0/lightdash-cli-2.390.0-macos-x64.tar.gz"
      sha256 "9b48838fddb7f5fb7bd033152c59df3c7aa8a6470223ad677ab8dadfe49be7aa"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.390.0/lightdash-cli-2.390.0-linux-x64.tar.gz"
    sha256 "b6a30219443b2b7f5ad1f6e269eb59132d86876df897793f4258cc6ce0deb1fb"

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
