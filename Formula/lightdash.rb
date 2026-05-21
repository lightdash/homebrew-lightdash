class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3005.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3005.2/lightdash-cli-0.3005.2-macos-arm64.tar.gz"
      sha256 "b0acd0cef86069590bf28fb46b4f84f166d9cb620971d0cd627a4316b1788f39"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3005.2/lightdash-cli-0.3005.2-macos-x64.tar.gz"
      sha256 "374116ee782f11e732c5a822ef7cdaa680ac5a96f9f494509f508cabc2cfd343"
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
