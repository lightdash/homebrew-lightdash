class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.58.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.58.0/lightdash-cli-1.58.0-macos-arm64.tar.gz"
      sha256 "68477fc801a36134b00b579270c164ec1ea29c04a7bdfb850e34856ed260d3e5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.58.0/lightdash-cli-1.58.0-macos-x64.tar.gz"
      sha256 "086911d9f9fde69bdf828e17f9e936977abf89d8390cebb7820561e025947b83"
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
