class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.128.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.128.0/lightdash-cli-2.128.0-macos-arm64.tar.gz"
      sha256 "287321f9e114770d018a58eba311d0e9c0225b19cacbafe9df5eeb3a302472ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.128.0/lightdash-cli-2.128.0-macos-x64.tar.gz"
      sha256 "bc7345fd901ba84741c28c5f212df00342d3e21613752d78de21207dd621dae3"
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
