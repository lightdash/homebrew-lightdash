class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2864.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.4/lightdash-cli-0.2864.4-macos-arm64.tar.gz"
      sha256 "da8f0309e8aaf440aeafa8e96f89bfb9d5ca5ef80734c27754706d20f5e7c42c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.4/lightdash-cli-0.2864.4-macos-x64.tar.gz"
      sha256 "ad79ca0b5c6900595a7a3c5aef8a6611c6797a7867274367cb97f6111863719f"
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
