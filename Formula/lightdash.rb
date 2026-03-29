class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2684.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2684.0/lightdash-cli-0.2684.0-macos-arm64.tar.gz"
      sha256 "82ffa2865f894f1bf9f1f15d8b66e567085a174407e9f7aea4bd46b4fad826bb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2684.0/lightdash-cli-0.2684.0-macos-x64.tar.gz"
      sha256 "74479f6601620c88a2e2865d027b0bff8e768aec695c3e44ca2736619edb249b"
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
