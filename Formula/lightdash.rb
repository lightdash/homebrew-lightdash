class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2663.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2663.0/lightdash-cli-0.2663.0-macos-arm64.tar.gz"
      sha256 "e3df8af5de46e4754ae22d8615fa8b53bcd5ca8a2c438f3a41aa50509500ec05"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2663.0/lightdash-cli-0.2663.0-macos-x64.tar.gz"
      sha256 "0f3ea032d5a5b17783873c8f2783af863a5cc1a1d76aae3f1af127203490c3b9"
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
