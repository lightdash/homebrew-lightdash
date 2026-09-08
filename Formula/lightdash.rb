class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.155.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.155.0/lightdash-cli-2.155.0-macos-arm64.tar.gz"
      sha256 "63632e58003b1d6e18dee942fcf90b0a182cf0318b41bbe89bbeae14473f7115"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.155.0/lightdash-cli-2.155.0-macos-x64.tar.gz"
      sha256 "90c3cf97b124bfc0bf4430063326fb6ca6682737834a44f3eae5fc2afcce69e2"
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
