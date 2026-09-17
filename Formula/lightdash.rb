class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.255.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.255.1/lightdash-cli-2.255.1-macos-arm64.tar.gz"
      sha256 "ec5a46939034653ae08c0f867a941deba770bc970ce485143c4bdf5404d80fa1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.255.1/lightdash-cli-2.255.1-macos-x64.tar.gz"
      sha256 "a5e6a1cb22c317a0f6452d0e0da2f059f534595fa44db5d0229b20a357b4060a"
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
