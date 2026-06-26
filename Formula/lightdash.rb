class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3252.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3252.2/lightdash-cli-0.3252.2-macos-arm64.tar.gz"
      sha256 "b3769d02994bb98d8f293e2c46c2525df051fb7543021fe0a1690ff4999840ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3252.2/lightdash-cli-0.3252.2-macos-x64.tar.gz"
      sha256 "f5c6c9261ba565e8491d7b2b7ba2bd804bfac73e04e9e3aa195fa2ac809c7c3e"
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
