class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2763.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2763.0/lightdash-cli-0.2763.0-macos-arm64.tar.gz"
      sha256 "3c9c0c2df90a1e39faa9bb85e4be5950c2b357ae7f964b95d907475def103c8c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2763.0/lightdash-cli-0.2763.0-macos-x64.tar.gz"
      sha256 "613a1e361d9295e51abcea3fc73d52fd0ea67c211516db62ea412ba78d486bbc"
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
