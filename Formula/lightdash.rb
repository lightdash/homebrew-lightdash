class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.90.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.90.0/lightdash-cli-1.90.0-macos-arm64.tar.gz"
      sha256 "ad6f25d4b37bc1e1c44b836316358d13de031eb9581269fa029811f4562e5a73"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.90.0/lightdash-cli-1.90.0-macos-x64.tar.gz"
      sha256 "7dd3ddc18bdbdbdf3f8f18366653832db6665c9281a7e5f453649cc68ece3705"
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
