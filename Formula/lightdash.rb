class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.243.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.243.0/lightdash-cli-1.243.0-macos-arm64.tar.gz"
      sha256 "778d0dbfd7c0681a7dec9189349200fba93d97b7d30307b85302a9b5dc399146"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.243.0/lightdash-cli-1.243.0-macos-x64.tar.gz"
      sha256 "3a38ea40be74b82f8d009c3932e5f60fc8c16486dc321fba5d2100d504a36530"
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
