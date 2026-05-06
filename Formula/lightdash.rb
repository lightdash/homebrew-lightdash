class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2880.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2880.0/lightdash-cli-0.2880.0-macos-arm64.tar.gz"
      sha256 "10e0f6c50c9054fb0c492ea990ba8cd06d33239fb0f902f75b6c770c26bc9c8f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2880.0/lightdash-cli-0.2880.0-macos-x64.tar.gz"
      sha256 "72bfcd1fb89bcab2002eae51f5f2a4f1e76d12875a67f281c5dbf3d9dc5bdcd1"
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
