class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3193.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3193.0/lightdash-cli-0.3193.0-macos-arm64.tar.gz"
      sha256 "34b3f78673c657dbcf0da48d25f9221ba073516dc1bcb90d3a281bb5b840cdb0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3193.0/lightdash-cli-0.3193.0-macos-x64.tar.gz"
      sha256 "a5c7a709eb3b8adf1922a471e0cc608a6b8204588a421e49cba383a39f086b67"
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
