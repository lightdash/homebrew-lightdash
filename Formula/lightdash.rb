class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2981.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2981.1/lightdash-cli-0.2981.1-macos-arm64.tar.gz"
      sha256 "d358905413ae7d6d96dceb000d2a11839a458895a7011b7887bf775ea6b1316d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2981.1/lightdash-cli-0.2981.1-macos-x64.tar.gz"
      sha256 "ef4b7cb1d3fe802c342fbe40fd47d8fc757710e86e79c859aedc7e1291b800fc"
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
