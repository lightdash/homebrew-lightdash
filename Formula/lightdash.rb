class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2960.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2960.2/lightdash-cli-0.2960.2-macos-arm64.tar.gz"
      sha256 "6b10ac720154510dac8ad9167769b17490ea94fb02d60286f0b39bdb8e7b1068"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2960.2/lightdash-cli-0.2960.2-macos-x64.tar.gz"
      sha256 "53fa6fee496c125dc08a02d69ff452f08b039e00c285255b5edc55defee96812"
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
