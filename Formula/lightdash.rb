class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2573.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2573.0/lightdash-cli-0.2573.0-macos-arm64.tar.gz"
      sha256 "bb3f3090364f02228f8b0fc91d2875e857db875ac9b3fd227b2a98ef1274b5b0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2573.0/lightdash-cli-0.2573.0-macos-x64.tar.gz"
      sha256 "85a1b99eceafceb1995919787305c3888a786c16fab3fa873743cab0fde4f2f1"
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
