class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3101.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3101.1/lightdash-cli-0.3101.1-macos-arm64.tar.gz"
      sha256 "fadd0479f49e3b87225fce21adff0731a75e6a233863c6a63d77d13ac0bc6682"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3101.1/lightdash-cli-0.3101.1-macos-x64.tar.gz"
      sha256 "c49d548a274717390ad04080cbe203f97550e3de7edd8f1d5ba904c570f8ad95"
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
