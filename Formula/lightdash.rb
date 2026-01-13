class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2334.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2334.1/lightdash-cli-0.2334.1-macos-arm64.tar.gz"
      sha256 "8e027709ab14b1af7f5fbe2c03852188708919466e767f8e370b6aa4ca26077e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2334.1/lightdash-cli-0.2334.1-macos-x64.tar.gz"
      sha256 "5d1a39a17fecb3dc9f3ffd3eaf5b8da796e90401dcd3df0c6c0173bc5bcec357"
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
