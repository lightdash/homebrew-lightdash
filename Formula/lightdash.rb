class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.159.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.159.0/lightdash-cli-2.159.0-macos-arm64.tar.gz"
      sha256 "4e1458a0bfd651d987bdb2a2649db4ca8f9f5f1af86b04f4d8fdf48ffa8f1aed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.159.0/lightdash-cli-2.159.0-macos-x64.tar.gz"
      sha256 "676bbe2039364b22f08adc4c6b536f6a828c68ba379e30b24171739526666051"
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
