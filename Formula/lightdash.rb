class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.108.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.108.0/lightdash-cli-1.108.0-macos-arm64.tar.gz"
      sha256 "c396f6bc277a525020db519a7fa147ccf76a7b8d1d40803d42fd4a41fed14e2c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.108.0/lightdash-cli-1.108.0-macos-x64.tar.gz"
      sha256 "b9a6db0b0b343dd49e0cb0c4b4b61e7af8cc4eda3cbab31ae8cda04febe002d9"
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
