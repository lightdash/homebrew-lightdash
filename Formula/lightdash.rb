class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.133.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.133.2/lightdash-cli-2.133.2-macos-arm64.tar.gz"
      sha256 "c23af69cf2a4e4a0be7f72be3a9c57a4c6e854804c03d87cb3a4cef206d495f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.133.2/lightdash-cli-2.133.2-macos-x64.tar.gz"
      sha256 "3a68c4c669134d676652405a33ab6cd4de02b7da8cc54478214bc54428dda5f9"
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
