class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3469.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3469.0/lightdash-cli-0.3469.0-macos-arm64.tar.gz"
      sha256 "cc680f4ff9c842e40f657924a4593f3474397ac7fea4d09f54b740443eaa0564"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3469.0/lightdash-cli-0.3469.0-macos-x64.tar.gz"
      sha256 "05875cf34ad0230952201910ce731246c85c7facdd4d52f026726f19bf1cf5e1"
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
