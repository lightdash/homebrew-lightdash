class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.295.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.295.0/lightdash-cli-2.295.0-macos-arm64.tar.gz"
      sha256 "0aa03ee110e21559b4acdae1ccceb72abf5fa50aa3c32e1380f4f0b7f8dacca0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.295.0/lightdash-cli-2.295.0-macos-x64.tar.gz"
      sha256 "e70cab7d803d71646946b48316411249ae4930340383e4b64d4e5cf68b0a8fbc"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.295.0/lightdash-cli-2.295.0-linux-x64.tar.gz"
    sha256 "cec93cfcc57bb5802b51dcee984cb51441624899f08ca5b9f596d16c8a87ed09"

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
