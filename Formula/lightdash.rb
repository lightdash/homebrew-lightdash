class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2396.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2396.0/lightdash-cli-0.2396.0-macos-arm64.tar.gz"
      sha256 "adbb4fd1cad8ff2c877ddf812318affceda656ebe9fbfbf0acc6543618e00d07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2396.0/lightdash-cli-0.2396.0-macos-x64.tar.gz"
      sha256 "b7c466feb575103b2cc5bfb09e7d2189170aab07e1d972101a6fb5b46c243076"
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
