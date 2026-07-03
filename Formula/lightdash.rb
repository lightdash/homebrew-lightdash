class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3303.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3303.0/lightdash-cli-0.3303.0-macos-arm64.tar.gz"
      sha256 "f561d12b17482570d0350cc2f66a82876ab594d55541cb2e0e3326fd59c247da"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3303.0/lightdash-cli-0.3303.0-macos-x64.tar.gz"
      sha256 "7f5ce24d1c76d827b1238402bbab342cfaa0a9ab5436043b3ab4feb401b04210"
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
