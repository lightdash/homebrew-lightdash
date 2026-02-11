class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2455.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2455.0/lightdash-cli-0.2455.0-macos-arm64.tar.gz"
      sha256 "b7b1c59ab8e4d8e8f071ef894b79afcf0866e1832956a1d56a2a2a64d0899a9e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2455.0/lightdash-cli-0.2455.0-macos-x64.tar.gz"
      sha256 "e3084c2dcb256b0706b6f85df855dad9e31ca807ccb9bf4deee26205d6557584"
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
