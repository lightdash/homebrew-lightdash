class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.156.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.156.2/lightdash-cli-2.156.2-macos-arm64.tar.gz"
      sha256 "690d6b1e2bb3a48ad3751a5a11f652a21dab0df9ac0104b65dc66ffc093d6d3a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.156.2/lightdash-cli-2.156.2-macos-x64.tar.gz"
      sha256 "8edb33bd02d40eddd012df2c3d56f2a54a0b348e44017992101877e310f777da"
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
