class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2381.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2381.0/lightdash-cli-0.2381.0-macos-arm64.tar.gz"
      sha256 "ef78006020e498243d917ed95700d028861fbc5e90f80cc521e247bb9723379f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2381.0/lightdash-cli-0.2381.0-macos-x64.tar.gz"
      sha256 "6d2b0e57422055faa28a8d619f09a6403214eec1db5946e7dbfec771c6e0eee8"
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
