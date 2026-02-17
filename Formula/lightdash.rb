class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2474.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2474.0/lightdash-cli-0.2474.0-macos-arm64.tar.gz"
      sha256 "5a8806950888e09a6f39e123fd2c024b5a257162b3fd3b191db0488787505546"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2474.0/lightdash-cli-0.2474.0-macos-x64.tar.gz"
      sha256 "2e191e5ffa6e3d5c174ab5646c7aa28dfd3bc791f9b89c0dc0567ce37e5c8515"
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
