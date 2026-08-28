class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.46.0/lightdash-cli-2.46.0-macos-arm64.tar.gz"
      sha256 "5330253769a3cbc5d2a71a757b45851ea7929a31ab1d6271b160e2e82ddf630e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.46.0/lightdash-cli-2.46.0-macos-x64.tar.gz"
      sha256 "7d3b31d8dfaf2ce868ed0920f01fd9cef9b56b699a8a4d4923968cb0127f234b"
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
