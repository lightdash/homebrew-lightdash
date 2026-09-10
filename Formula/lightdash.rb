class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.185.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.3/lightdash-cli-2.185.3-macos-arm64.tar.gz"
      sha256 "91ba57e50f17aca54aa0b388f4492bd7e2d192a2e914efcd551c40e3d17fc7e7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.3/lightdash-cli-2.185.3-macos-x64.tar.gz"
      sha256 "462ac361492549e1ce27c76c293b3412e4442780768fe490556728f107a90526"
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
