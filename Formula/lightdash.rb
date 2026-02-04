class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2420.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2420.0/lightdash-cli-0.2420.0-macos-arm64.tar.gz"
      sha256 "1007249748f5bf1086c34a8a56087f48bb2e7cfa0f9db812264c6071fc886ead"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2420.0/lightdash-cli-0.2420.0-macos-x64.tar.gz"
      sha256 "e0c7a3200a7c623b7b14d0ede7d29d86cceed10890f69f11ee6a0814bdb9dbb9"
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
