class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3245.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3245.0/lightdash-cli-0.3245.0-macos-arm64.tar.gz"
      sha256 "af3dcb3ca2a49c00ec4f7f3ed323d60c4efe92fa1ac0bf43c31aa47d33b8420b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3245.0/lightdash-cli-0.3245.0-macos-x64.tar.gz"
      sha256 "ac44f39f4d6917b152bb73850656731d61a3464399f148e700cab374d34142ef"
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
