class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2192.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2192.0/lightdash-cli-0.2192.0-macos-arm64.tar.gz"
      sha256 "e1b2c0d33f1c61d2424cf261c5c373f4b4504411b02d78d8136f44feca5079d7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2192.0/lightdash-cli-0.2192.0-macos-x64.tar.gz"
      sha256 "5c8ba06ac5ca9585452e86d25539e670d38ba0ef3fa96a814cae852ac480133f"
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
