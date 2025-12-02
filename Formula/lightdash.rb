class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2215.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2215.1/lightdash-cli-0.2215.1-macos-arm64.tar.gz"
      sha256 "bc192d024d9bcff6134046e9fd17348bb5c9266d4afeaf626e690cea80fed327"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2215.1/lightdash-cli-0.2215.1-macos-x64.tar.gz"
      sha256 "ae4769d6a15710ce787fee5cfb9b59e0868ef2fd85012354e504a853d2c2a50d"
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
