class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.162.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.0/lightdash-cli-1.162.0-macos-arm64.tar.gz"
      sha256 "0ea15c08076ab9c915d172782881c5d026779c2919ab675fe676d462b72b4939"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.162.0/lightdash-cli-1.162.0-macos-x64.tar.gz"
      sha256 "3c7347f3a3305e7d6429410a17f3eac60cb389ed034205d147fd91a64b88fb10"
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
