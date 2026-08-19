class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.202.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.1/lightdash-cli-1.202.1-macos-arm64.tar.gz"
      sha256 "0dfa066afd82877efc7817fbc61e5895083deab22b62cf48cb3f91a4ff6b6709"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.202.1/lightdash-cli-1.202.1-macos-x64.tar.gz"
      sha256 "65c0de1837cc2f1987634b396292f944fa90f8b0f1fc99a2e69741c23f8d035b"
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
