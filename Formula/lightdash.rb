class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3399.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3399.1/lightdash-cli-0.3399.1-macos-arm64.tar.gz"
      sha256 "cffca6464c14c2d6762d7cc9ede693094d31fc33e8291848358412e7acc3d088"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3399.1/lightdash-cli-0.3399.1-macos-x64.tar.gz"
      sha256 "aff77de902d14115371fbd0e6fccf90e037ccd032c6801c20663d716a4c9dea0"
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
