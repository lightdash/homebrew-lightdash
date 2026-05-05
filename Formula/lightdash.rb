class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2871.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2871.0/lightdash-cli-0.2871.0-macos-arm64.tar.gz"
      sha256 "eaedc8817fa52eba3ff00766d0929b5f7be98979f6af2a543e9ff5c9c978655d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2871.0/lightdash-cli-0.2871.0-macos-x64.tar.gz"
      sha256 "cb96a4b2be2373f612b5836310be4dcd7f11f4882e279a46e5d80654e4674771"
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
