class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3456.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3456.0/lightdash-cli-0.3456.0-macos-arm64.tar.gz"
      sha256 "ea025f8f66d7585692c2f1eb31be21daca0f7091a32dc612ccfbae8adfb5c525"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3456.0/lightdash-cli-0.3456.0-macos-x64.tar.gz"
      sha256 "adb05c06aad3155d727776ec58c7fb3c5c931ff274d319822a150090e5043260"
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
