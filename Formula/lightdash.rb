class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2700.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2700.1/lightdash-cli-0.2700.1-macos-arm64.tar.gz"
      sha256 "18b126b643cf345fbe97bd7f0f521524c6871ba17b66ed34cd333bfb30169e4f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2700.1/lightdash-cli-0.2700.1-macos-x64.tar.gz"
      sha256 "dd73432ae08691695663f9876d5649d06ab0452340df0f70dff087ebd1adb047"
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
