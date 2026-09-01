class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.71.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.71.0/lightdash-cli-2.71.0-macos-arm64.tar.gz"
      sha256 "264cc528c55a6372ca4056d25e0d0e1772828ef3963211bfbc25ef4b81452d99"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.71.0/lightdash-cli-2.71.0-macos-x64.tar.gz"
      sha256 "acadfb71ee7f962523f2563589f79ba633abcf2e68f038232dab75f94e243d02"
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
