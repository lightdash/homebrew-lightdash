class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.160.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.160.3/lightdash-cli-1.160.3-macos-arm64.tar.gz"
      sha256 "4581a0ccb47bb115d1166353b72bce477c5a29cc12e8b2c06174dcf737b96cf1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.160.3/lightdash-cli-1.160.3-macos-x64.tar.gz"
      sha256 "54009f8228ee631cf8047b6f7c449017d466ee22daa405b86c46d8f67c28c3d0"
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
