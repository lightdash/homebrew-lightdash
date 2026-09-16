class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.231.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.231.0/lightdash-cli-2.231.0-macos-arm64.tar.gz"
      sha256 "b1301a90eb5ccf255256719f0d47e515d965ff1f83eca403815efff2b1c6642f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.231.0/lightdash-cli-2.231.0-macos-x64.tar.gz"
      sha256 "b193e4a9df017e63a57a40e345a3831d385817a16eee5fa531221acffcd7f273"
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
