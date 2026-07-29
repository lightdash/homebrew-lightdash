class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.32.0/lightdash-cli-1.32.0-macos-arm64.tar.gz"
      sha256 "3528ddf80d917140b091621c88242d773b922747b311b4096805b5abc63e87bd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.32.0/lightdash-cli-1.32.0-macos-x64.tar.gz"
      sha256 "5710b5362d9904e89b8c16ad55e688b7d366acbc7cafab27794f74a82406e713"
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
