class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2882.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2882.1/lightdash-cli-0.2882.1-macos-arm64.tar.gz"
      sha256 "0c8155df97702a08a19a1f199bb98cc8740acfa2d6a306359f08fc25aead5e13"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2882.1/lightdash-cli-0.2882.1-macos-x64.tar.gz"
      sha256 "1f5e4a556369d27341ec2f1b0fc2e44a39be15dae62336f2ebcb22a163a89845"
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
