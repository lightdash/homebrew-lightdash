class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.19.0/lightdash-cli-2.19.0-macos-arm64.tar.gz"
      sha256 "d325ea82b9bdb5010a5005c0b4e7f145d3a5fe83b300d2fde564d394c3a11273"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.19.0/lightdash-cli-2.19.0-macos-x64.tar.gz"
      sha256 "c455a432da1cb8d7086753258d82cb2ff7aff7fba02cd5dc52e8ad70448a5956"
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
