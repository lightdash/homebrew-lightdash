class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.137.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.137.0/lightdash-cli-2.137.0-macos-arm64.tar.gz"
      sha256 "9fd273ebca9acaf5de15d6a35d1e5cccf64393cdb64338112632a4acf0dc6c90"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.137.0/lightdash-cli-2.137.0-macos-x64.tar.gz"
      sha256 "5fed25c1bc841ba0b1c76a2d3830259161bf2b1bdc16671c076a8b5610d1bc11"
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
