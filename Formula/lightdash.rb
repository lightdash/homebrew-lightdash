class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3420.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3420.1/lightdash-cli-0.3420.1-macos-arm64.tar.gz"
      sha256 "1fc3a5a5699c1d0b7df239be5ff1ba7eaf95ae5b951c290b6d2af0f3c992bfcf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3420.1/lightdash-cli-0.3420.1-macos-x64.tar.gz"
      sha256 "681b3049624060126c5ea3d1ac6f7a1c78dcc855e0d60abc10f08c6ea9b57b83"
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
