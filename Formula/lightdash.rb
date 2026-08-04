class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.81.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.81.0/lightdash-cli-1.81.0-macos-arm64.tar.gz"
      sha256 "cf090e046af5e527279b6d9ee40bf407684e9e861db3d2d249d504f8e679617d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.81.0/lightdash-cli-1.81.0-macos-x64.tar.gz"
      sha256 "39baba5f06ce98e66d986b55e4a583557b6eccef4cf58a04a07d1c367ea7ad09"
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
