class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3123.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3123.0/lightdash-cli-0.3123.0-macos-arm64.tar.gz"
      sha256 "9009f8a757b3e2217ba6a4a617c7ec87206dd9c7c9841ffbe63d17cb5ed6e789"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3123.0/lightdash-cli-0.3123.0-macos-x64.tar.gz"
      sha256 "3de2d13d1fa365fa51cedd45782b53ce968045521aaafb80ea1f66052eac1acd"
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
