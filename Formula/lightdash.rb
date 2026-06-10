class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3125.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3125.0/lightdash-cli-0.3125.0-macos-arm64.tar.gz"
      sha256 "a9baee9a46fa44ec6a3aa5f683f3fe87b21b7e224672daee5d34371642c0865b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3125.0/lightdash-cli-0.3125.0-macos-x64.tar.gz"
      sha256 "d449222398a692363da756b4739aed1c7899d087637e42de6feb1ad47887183c"
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
