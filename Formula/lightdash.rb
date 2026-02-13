class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2462.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2462.0/lightdash-cli-0.2462.0-macos-arm64.tar.gz"
      sha256 "6505b97df9c636098fd7efc73fa3064f8a3f64be7c8397eacaaa9a06405ec6ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2462.0/lightdash-cli-0.2462.0-macos-x64.tar.gz"
      sha256 "a2a6bf13130b7365b0684d1f86f25a1877671e2efdc14128a751594036241623"
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
