class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.72.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.4/lightdash-cli-2.72.4-macos-arm64.tar.gz"
      sha256 "87b7e4c5ccc8567df443c5da767939ebf46b3990a0a192216311dfc1d09be085"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.72.4/lightdash-cli-2.72.4-macos-x64.tar.gz"
      sha256 "954ae3a0d651098ad9181ec8d5a405ee0ec126202cb11aaae834a0da631f3212"
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
