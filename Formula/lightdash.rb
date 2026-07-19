class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3418.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3418.0/lightdash-cli-0.3418.0-macos-arm64.tar.gz"
      sha256 "3023d2c73409f1462a855751f395515949ece47ab9b4a6a76d8ab1640a5e09ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3418.0/lightdash-cli-0.3418.0-macos-x64.tar.gz"
      sha256 "306e6bd5ec1b1006a5983d65b8e3be2b28fe3e28f0d6672508217e728e106966"
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
