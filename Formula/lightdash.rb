class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.166.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.166.1/lightdash-cli-2.166.1-macos-arm64.tar.gz"
      sha256 "4dda6ae94234cac0ad7939d1cd11ce774cb8f893ecce8529c2d15f9c2ef5fec4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.166.1/lightdash-cli-2.166.1-macos-x64.tar.gz"
      sha256 "e01dec6e0b67259848be8204df338cad772c19b7ff829f646912c6f30327ef61"
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
