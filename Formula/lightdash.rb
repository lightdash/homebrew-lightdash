class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.221.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.221.1/lightdash-cli-1.221.1-macos-arm64.tar.gz"
      sha256 "0c02dc31c21fd3814f90f28cd9f348bee3e4e952f36a95731f091004dcd55fdb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.221.1/lightdash-cli-1.221.1-macos-x64.tar.gz"
      sha256 "66da07a0f28829413827c9366d0814598fab2ec943d5962409655e16f22ab393"
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
