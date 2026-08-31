class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.67.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.1/lightdash-cli-2.67.1-macos-arm64.tar.gz"
      sha256 "3afb67b850233ca6be04212e980a681046ed1092eb82b84f57e3370382426d79"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.67.1/lightdash-cli-2.67.1-macos-x64.tar.gz"
      sha256 "e529d039ccbf87e86d495c704c373e39e68d2e8e381f5869dc370f98ba82a977"
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
