class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2814.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2814.0/lightdash-cli-0.2814.0-macos-arm64.tar.gz"
      sha256 "195aa544ff6d4c573afdb45922b8f5d13e46abe5f7802e245ffeb2ef40da837d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2814.0/lightdash-cli-0.2814.0-macos-x64.tar.gz"
      sha256 "b51965f8a4291210ca728456246c25a01c029d2073454ff70f3ec8eacedcd8cd"
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
