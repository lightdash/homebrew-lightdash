class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.259.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.2/lightdash-cli-2.259.2-macos-arm64.tar.gz"
      sha256 "01e7f5cbf74151697da185aae9612348bdcc3fb874bde9e4152732307c314834"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.259.2/lightdash-cli-2.259.2-macos-x64.tar.gz"
      sha256 "c73d360de576f23761e48cbc504ac85ac1edf10ae7ce5bd3afed6f597ff09456"
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
