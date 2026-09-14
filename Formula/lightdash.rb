class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.207.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.207.0/lightdash-cli-2.207.0-macos-arm64.tar.gz"
      sha256 "0b209d4df3d9be5ffe3f509b001feb690ad2e78a7ad90a4b01cf2a6deebabedf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.207.0/lightdash-cli-2.207.0-macos-x64.tar.gz"
      sha256 "d4e8ec4664a55667b468da7dddd010ed9bad0fc3308a175f018f89ecc2eb708e"
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
