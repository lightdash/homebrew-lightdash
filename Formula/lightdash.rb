class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3155.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3155.1/lightdash-cli-0.3155.1-macos-arm64.tar.gz"
      sha256 "13701176124505f2e4f27b383d5f4710eab91d33d88a7d6fa6b4bdb43cd40f92"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3155.1/lightdash-cli-0.3155.1-macos-x64.tar.gz"
      sha256 "3c1bdd704bd9e82c061cca4a5aab34729fe8779f463af430f94bc33c34462bc4"
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
