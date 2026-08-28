class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.45.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.45.1/lightdash-cli-2.45.1-macos-arm64.tar.gz"
      sha256 "d7a0d50bbbf105943f5fe01358589d49c986b79f850fec175dfb7cf0e74a4708"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.45.1/lightdash-cli-2.45.1-macos-x64.tar.gz"
      sha256 "d5bba9c732fc9e86ecfc4cbe0f603d7bd76688daa2793e270259c4956ced3dc7"
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
