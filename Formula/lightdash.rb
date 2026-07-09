class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3344.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3344.0/lightdash-cli-0.3344.0-macos-arm64.tar.gz"
      sha256 "09fa8ace038ab01bcda55d7ae7b4a0521a7d0a7f5b0edf1332d00b9f96d5b06a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3344.0/lightdash-cli-0.3344.0-macos-x64.tar.gz"
      sha256 "ccbf656e1cb7b3500f4b67d61eab4e168a779137d0b2dbb37698ad14c2ac6060"
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
