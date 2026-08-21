class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.232.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.232.2/lightdash-cli-1.232.2-macos-arm64.tar.gz"
      sha256 "3c05b5808435047b236141e9c8a961ddf1eca185f9550612c49c08083a16d153"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.232.2/lightdash-cli-1.232.2-macos-x64.tar.gz"
      sha256 "88dbd304dd55a9942ac71bf839dfe228d141e3e3399cb04ee885fbeff52e7b74"
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
