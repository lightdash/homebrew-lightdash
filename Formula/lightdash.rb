class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.440.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.440.0/lightdash-cli-3.440.0-macos-arm64.tar.gz"
      sha256 "440c8ed23a7f2fb73a98cc68843289819c922ab5da506f56f95df1aa7b3d2131"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.440.0/lightdash-cli-3.440.0-macos-x64.tar.gz"
      sha256 "d866f2b7de604fdf12a66a577b5521153ea9c514cc553111196e656f74eb610a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.440.0/lightdash-cli-3.440.0-linux-x64.tar.gz"
    sha256 "43245450f5a9272b538daf47a09827b9994273cff649de6ab6374f0a76c6ae5d"

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
