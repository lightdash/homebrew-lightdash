class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.286.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.3/lightdash-cli-2.286.3-macos-arm64.tar.gz"
      sha256 "41cc7d1fb13bc5eb9062208fe7d0f45819b02f49426b9ae27be34d52d8f705a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.3/lightdash-cli-2.286.3-macos-x64.tar.gz"
      sha256 "f0914ae8dec1dd5eddcd0d66197c159d5f960a0683c1f7eec7f3800dcb761764"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.286.3/lightdash-cli-2.286.3-linux-x64.tar.gz"
      sha256 "5dc4ddfd4179ed7bd5a1bfbcb0d59bab647de340d6939d9ab117db56dd307357"
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
