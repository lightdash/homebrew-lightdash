class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3008.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3008.0/lightdash-cli-0.3008.0-macos-arm64.tar.gz"
      sha256 "98699355209371922db8bf34329102d7d03f8523282d539b8e72a51b156d7974"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3008.0/lightdash-cli-0.3008.0-macos-x64.tar.gz"
      sha256 "63bd547e18f0da2b34b17ae444a9e31ec7ecf6283b549b1c0b5cfcee449dd4a4"
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
