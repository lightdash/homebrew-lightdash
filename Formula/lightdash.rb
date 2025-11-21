class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2197.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2197.0/lightdash-cli-0.2197.0-macos-arm64.tar.gz"
      sha256 "1ffd9a3d3df331d2befae4f59b68a2df17a9e78fb6d25057f12b54758711ec47"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2197.0/lightdash-cli-0.2197.0-macos-x64.tar.gz"
      sha256 "c0be2d31a72dbf7f79384b11a44a01b4bdc813434411b0a6bf58c055819e5862"
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
