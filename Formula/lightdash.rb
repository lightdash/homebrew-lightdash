class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.216.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.216.1/lightdash-cli-1.216.1-macos-arm64.tar.gz"
      sha256 "278994aafd496db55ca4410660cc7073be1817e774c033b1a95f6bc59ae529ea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.216.1/lightdash-cli-1.216.1-macos-x64.tar.gz"
      sha256 "07371514e2362ba321ec6c2e15e5f226dcdaf1c160e4f88d6bff985fd8d90334"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
