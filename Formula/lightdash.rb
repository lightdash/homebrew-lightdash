class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3441.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3441.0/lightdash-cli-0.3441.0-macos-arm64.tar.gz"
      sha256 "f61c6b7d8e4b13fa3e6249cdcc887ce61401e83e488651626a6b12717390c05f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3441.0/lightdash-cli-0.3441.0-macos-x64.tar.gz"
      sha256 "9ccdf4b8e597cf60fbaa7940aa762d555e9d753f72dddc8bc985b53d0517112b"
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
