class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.115.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.115.0/lightdash-cli-2.115.0-macos-arm64.tar.gz"
      sha256 "2f8b1485f296562d41943f968cc7d41c6d6e27a7b61f68e2d9e2893dfcd40646"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.115.0/lightdash-cli-2.115.0-macos-x64.tar.gz"
      sha256 "d8330d13d21b77d18e63cc2bbd83433368718e690ffe00f85098996978317b54"
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
