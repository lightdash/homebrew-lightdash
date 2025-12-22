class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.1/lightdash-cli-0.2270.1-macos-arm64.tar.gz"
      sha256 "cc22159ccbdca765be48c5974a94a1ce77d34b420fd00e442bcbfe7eedd10913"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.1/lightdash-cli-0.2270.1-macos-x64.tar.gz"
      sha256 "cac793764330d8d626369c2e8585590b176d1bcbec77f21f0a0346735c53bb02"
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
