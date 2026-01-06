class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2301.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.1/lightdash-cli-0.2301.1-macos-arm64.tar.gz"
      sha256 "64749da93f65ebfc214292b61e1d9a2ee5a1fa22c07f1e368deb3e106937d277"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2301.1/lightdash-cli-0.2301.1-macos-x64.tar.gz"
      sha256 "97ff2baf1d1cdcb87ac7c7e84631883a9e503e1530bb58c7453b4348d958bc31"
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
