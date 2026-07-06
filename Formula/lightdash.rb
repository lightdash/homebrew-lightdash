class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3310.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3310.0/lightdash-cli-0.3310.0-macos-arm64.tar.gz"
      sha256 "3c04597cccace1566be0fbc986d0e89750b0171661b398f036040ceb58f018fb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3310.0/lightdash-cli-0.3310.0-macos-x64.tar.gz"
      sha256 "d3954fe946224420ece0184ab7b97e1fe7d97f16d41807a99957b05eaadcd0e7"
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
