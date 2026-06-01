class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3060.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3060.0/lightdash-cli-0.3060.0-macos-arm64.tar.gz"
      sha256 "e0ef961809c1786cd54e98d1757b0f15e9b40bb18b06dd9f129f68800d4617ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3060.0/lightdash-cli-0.3060.0-macos-x64.tar.gz"
      sha256 "c69272fe736d53c6d22549afd98ee593f500cf948afcf00ee880aea26c707e2e"
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
