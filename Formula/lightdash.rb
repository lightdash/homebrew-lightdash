class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2801.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2801.1/lightdash-cli-0.2801.1-macos-arm64.tar.gz"
      sha256 "4647f74c95defebb8cfe06f16b1835a1645e5605bd306b1879760cc92b85f168"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2801.1/lightdash-cli-0.2801.1-macos-x64.tar.gz"
      sha256 "3823d5c645c5fe45acbf10f4b8cf8ef0bb32896dfcba6d013f2d3af7ec2bdd11"
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
