class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3284.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3284.0/lightdash-cli-0.3284.0-macos-arm64.tar.gz"
      sha256 "8c5494b3375b1e32b3685c00d611dcaf323a7f5c312a7cf6cf3d415927e26d72"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3284.0/lightdash-cli-0.3284.0-macos-x64.tar.gz"
      sha256 "b8a9d05b56ba452cb630d7ed444b5ec12114fbdb608acf8b299661466e84712c"
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
