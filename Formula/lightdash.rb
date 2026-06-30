class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3264.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3264.0/lightdash-cli-0.3264.0-macos-arm64.tar.gz"
      sha256 "6b9c336807f0fd9784efc1509b4c428df88c16d4e62c44494428518a41c066bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3264.0/lightdash-cli-0.3264.0-macos-x64.tar.gz"
      sha256 "6861042a548722d6d5ea6fb37703da043e100cf555dc661f35a205729947895f"
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
