class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3486.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3486.0/lightdash-cli-0.3486.0-macos-arm64.tar.gz"
      sha256 "02f410abcded0b1e724702111cc91d7963535e984969c6469ba14f0c3b6ce162"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3486.0/lightdash-cli-0.3486.0-macos-x64.tar.gz"
      sha256 "fd5d0fb564a4493ba7965cda6d679176fbeb83ff8ac0a724fb7d198805b74b07"
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
