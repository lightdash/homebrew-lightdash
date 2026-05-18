class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2962.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2962.1/lightdash-cli-0.2962.1-macos-arm64.tar.gz"
      sha256 "f2f10c5bad02c4226d1b2f4eb4cf9a6b791855c71c35e8d9c2b78ddd39b67270"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2962.1/lightdash-cli-0.2962.1-macos-x64.tar.gz"
      sha256 "998ed23ce92f7c8782cb70eab40b23599b27b35c2785020f7589a46df2d8cab3"
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
