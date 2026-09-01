class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.70.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.70.0/lightdash-cli-2.70.0-macos-arm64.tar.gz"
      sha256 "ce2eb8083aff26619efbb30703d0cfa66d090c9c080955fc41e9bfb8c6b466f3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.70.0/lightdash-cli-2.70.0-macos-x64.tar.gz"
      sha256 "f55383a7a9ebff84f3aa532c8ee09a4a5ea051539fde55f52c465724e40be21f"
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
