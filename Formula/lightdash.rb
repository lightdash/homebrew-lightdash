class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3046.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3046.1/lightdash-cli-0.3046.1-macos-arm64.tar.gz"
      sha256 "9eb5fb4f3400aa90514fd9e1a043e16effcfde9c68ade0ecc309da05c7567c86"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3046.1/lightdash-cli-0.3046.1-macos-x64.tar.gz"
      sha256 "fccf0677154ac826728b479019ce9496568f00434cd1ef2958f664759f411095"
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
