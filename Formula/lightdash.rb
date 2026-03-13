class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2618.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2618.0/lightdash-cli-0.2618.0-macos-arm64.tar.gz"
      sha256 "34930003a3b5181b453ae2c3bf4a5da6f024c2d9f786b45b1d04f31c643e2226"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2618.0/lightdash-cli-0.2618.0-macos-x64.tar.gz"
      sha256 "82bd07cfdccdacd541ca7b8cae068254f7ddc9974a2c32b2d70537e9c7ff0339"
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
