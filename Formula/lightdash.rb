class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3385.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3385.0/lightdash-cli-0.3385.0-macos-arm64.tar.gz"
      sha256 "57e043f3e3c58e18b22b9236061a819b7cce7ebd29ba10cc0404b08d55e237d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3385.0/lightdash-cli-0.3385.0-macos-x64.tar.gz"
      sha256 "dfd3de460fdfc937cb0efb849a13bc5ff89bfc8329d77acee25f0d6fd105cd56"
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
