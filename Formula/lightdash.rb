class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.173.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.173.0/lightdash-cli-3.173.0-macos-arm64.tar.gz"
      sha256 "bdf8be3613ed417723f8fdc1b8a61b0e63967f80975b56b57cb6e1edc5204033"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.173.0/lightdash-cli-3.173.0-macos-x64.tar.gz"
      sha256 "fd88a75e086cc84ee6d46bf1dcd53bc9c19c0456e502813755214d13bbf41ece"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.173.0/lightdash-cli-3.173.0-linux-x64.tar.gz"
    sha256 "7c51e64e2b1aea0fa666d8e7360cd006ac55f3e7b3071caf8da165a39a1ae540"

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
