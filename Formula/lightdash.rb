class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.59.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.59.1/lightdash-cli-1.59.1-macos-arm64.tar.gz"
      sha256 "6203282f83038471fe3c1d0dee44d85c8e5aaa01be1b71e39e27e1fdbff6c364"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.59.1/lightdash-cli-1.59.1-macos-x64.tar.gz"
      sha256 "3607d7f6a46154cf4874955e81571f224786ae7039c9bd264a12548e25ee9216"
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
