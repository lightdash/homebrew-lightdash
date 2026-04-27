class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2811.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.1/lightdash-cli-0.2811.1-macos-arm64.tar.gz"
      sha256 "99f2e5a8f9fb98013d5592c4ed1860449ed06794c9bed1f6014e04c5f6de0ff5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2811.1/lightdash-cli-0.2811.1-macos-x64.tar.gz"
      sha256 "87b22523f33b0aa4cb54b3ce18fdbd0474b968e1dde1839dd2e687798255a7b9"
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
