class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3243.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3243.1/lightdash-cli-0.3243.1-macos-arm64.tar.gz"
      sha256 "e9ff93b3eeb5fe1290b4643c3c2fca7cad9beaa2f00d2385be6e536a94a3f597"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3243.1/lightdash-cli-0.3243.1-macos-x64.tar.gz"
      sha256 "7b21bb32d8c4ae28f7d0ba56981ecbe0b55ee1e7bf862230d6857ef6286f499f"
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
