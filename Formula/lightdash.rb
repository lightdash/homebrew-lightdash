class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2299.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2299.0/lightdash-cli-0.2299.0-macos-arm64.tar.gz"
      sha256 "84a5b6a1d188b10d025e659311695576727589c6dc99d1e8962a76d97214a73f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2299.0/lightdash-cli-0.2299.0-macos-x64.tar.gz"
      sha256 "181878ab15b73526c838715961fcdb09b40050d27c2308ae6764fa2d829beac2"
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
