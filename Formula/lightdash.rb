class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3192.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3192.2/lightdash-cli-0.3192.2-macos-arm64.tar.gz"
      sha256 "90b33f5920c3896f8f22b2fff0e1e83e6fd9cb54785466363f0086f029dbebba"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3192.2/lightdash-cli-0.3192.2-macos-x64.tar.gz"
      sha256 "9ae777a654fde1292b2b7c1563bd0457911c0a3c0a4c209f5cf67558b2a73627"
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
