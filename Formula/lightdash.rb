class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.162.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.1/lightdash-cli-2.162.1-macos-arm64.tar.gz"
      sha256 "48601cc9fbe8d9554d16f6fe56433fbd5191ce3401a5cec25ad4035b1208e5f8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.162.1/lightdash-cli-2.162.1-macos-x64.tar.gz"
      sha256 "c87abc8f8d5d2b75ce6e7d5aff8b33abead93849ea62b365fc9da8660f12e938"
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
