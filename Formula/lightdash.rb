class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.245.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.245.0/lightdash-cli-2.245.0-macos-arm64.tar.gz"
      sha256 "3cfb169d72b1feccacc122141a382715352e9645cc3d029a1a306444c45c8834"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.245.0/lightdash-cli-2.245.0-macos-x64.tar.gz"
      sha256 "d0ce487fac4aae2bc38bd5890841119af7d1743c6caa9690cef2f115ec01edcc"
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
