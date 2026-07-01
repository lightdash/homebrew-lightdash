class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3279.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3279.0/lightdash-cli-0.3279.0-macos-arm64.tar.gz"
      sha256 "cf75bec292e4639cb08eb6128a669dc376772f5c0e1347035976e22a01ac60bf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3279.0/lightdash-cli-0.3279.0-macos-x64.tar.gz"
      sha256 "f4c527572eba277d723f399a5e596746fd94591291d39e63f522372214497fd8"
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
