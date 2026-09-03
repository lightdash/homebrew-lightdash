class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.102.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.102.1/lightdash-cli-2.102.1-macos-arm64.tar.gz"
      sha256 "b3b4914da2bcd12c346d1a16bfa3016384b85e315ac4a9eec28f02a4d56a9987"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.102.1/lightdash-cli-2.102.1-macos-x64.tar.gz"
      sha256 "ff52b1491b4bc08195a5a82d421a26a5896dc308b0d5e4259491081bd62a76d1"
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
