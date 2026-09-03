class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.116.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.116.0/lightdash-cli-2.116.0-macos-arm64.tar.gz"
      sha256 "7cecef1af30e9f57163c6cede81f76649437d45f5db2249eb97ecc9af1002425"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.116.0/lightdash-cli-2.116.0-macos-x64.tar.gz"
      sha256 "9ffe3677f69547bcb949036ae724aa354b0831d0a75aefd830a8f153250d8a34"
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
