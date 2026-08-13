class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.153.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.153.1/lightdash-cli-1.153.1-macos-arm64.tar.gz"
      sha256 "80e3d8a75062ceddc5208bc41c32d9f1c2e45bced89ea19b170f517812d9b8cd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.153.1/lightdash-cli-1.153.1-macos-x64.tar.gz"
      sha256 "a0e76644cb8c18bd5c3478e168e3c4d3056c5aea57e32070c3cb7aba59627d97"
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
