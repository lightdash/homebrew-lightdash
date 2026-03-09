class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2588.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2588.0/lightdash-cli-0.2588.0-macos-arm64.tar.gz"
      sha256 "0d9b09c2e9b2007d68010dc2444e19632e47a5e3a286f5385c8cb745be03efc2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2588.0/lightdash-cli-0.2588.0-macos-x64.tar.gz"
      sha256 "60a29b6d0824719f7542356c0469166f51b8c79d27b6e8a9213f38e5613ace2b"
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
