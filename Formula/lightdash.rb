class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2803.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2803.0/lightdash-cli-0.2803.0-macos-arm64.tar.gz"
      sha256 "4dcfe1196babe1b278fa94712ada6748654cc5e6455fa264a8f7de7fae67d88a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2803.0/lightdash-cli-0.2803.0-macos-x64.tar.gz"
      sha256 "f2dbfec3d0b133a3ad170d94212c6e4dafd0f9fe945297e4836e079ee29a9900"
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
