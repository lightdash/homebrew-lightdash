class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.67.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.4/lightdash-cli-2.67.4-macos-arm64.tar.gz"
      sha256 "850611bb466fe8c01e2d598f064f28e93c8c99f89db09703b7adbd6a5ebab4c6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.4/lightdash-cli-2.67.4-macos-x64.tar.gz"
      sha256 "a8a5e7ac2a832949b252e3a07d85c8e60e1254a99b727dce85b7614292d3bc2b"
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
