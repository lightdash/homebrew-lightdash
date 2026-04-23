class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2795.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2795.0/lightdash-cli-0.2795.0-macos-arm64.tar.gz"
      sha256 "331dd034273063c983c52c18c99e4916b28bbd5d67790c5c29f021b5d406ced7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2795.0/lightdash-cli-0.2795.0-macos-x64.tar.gz"
      sha256 "5bdecf2d48f412a1500c9af68e1649b842a6ff6cb37f44facf45bf4d7b5d2044"
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
