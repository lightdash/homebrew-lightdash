class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.205.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.205.0/lightdash-cli-2.205.0-macos-arm64.tar.gz"
      sha256 "56c15fd65ab797717ac898919793f395ef2026d8f1579e1b58e6d9f82d6aee45"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.205.0/lightdash-cli-2.205.0-macos-x64.tar.gz"
      sha256 "ec2671b114786da9f055d04d4ac3880bde6c12986c708020a6aca45fa01a0482"
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
