class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2951.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2951.0/lightdash-cli-0.2951.0-macos-arm64.tar.gz"
      sha256 "f339865f82afa312f12b7f2cff29e610423d0dbc24440cd439083f629d5f1f13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2951.0/lightdash-cli-0.2951.0-macos-x64.tar.gz"
      sha256 "18a29fdbed699eb095c8f0f00021b87254ace77704bfcbf6c81763b6a19f8745"
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
