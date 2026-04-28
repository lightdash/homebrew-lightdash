class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2831.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2831.0/lightdash-cli-0.2831.0-macos-arm64.tar.gz"
      sha256 "7f7dea8a675fd69c71718396dabcc23fcf6c436c1cd53028c32da9c60ac271fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2831.0/lightdash-cli-0.2831.0-macos-x64.tar.gz"
      sha256 "59688dcc360dedb0c20a0704dfee18231e7b79017e54589707c229c9cc547250"
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
