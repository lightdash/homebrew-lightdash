class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.341.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.341.0/lightdash-cli-3.341.0-macos-arm64.tar.gz"
      sha256 "7678cf035b95aa8cea7b4390c574fbdf5d937478cd7037dd296310f5d96b459c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.341.0/lightdash-cli-3.341.0-macos-x64.tar.gz"
      sha256 "c5ab5d2c339514022315d4f52e8ebe14389ec03c92066de431e8d1ccb96131e2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.341.0/lightdash-cli-3.341.0-linux-x64.tar.gz"
    sha256 "270e5670cc50d6dfb5bb6f297e8730359397c5d889d3b8aaa29911c403f32bac"

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
