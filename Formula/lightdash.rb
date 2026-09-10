class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.190.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.190.0/lightdash-cli-2.190.0-macos-arm64.tar.gz"
      sha256 "be22e86af09c46ad6c9a798a889ae8d9b3f2c9ae44fe6c15a806ea866d845cee"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.190.0/lightdash-cli-2.190.0-macos-x64.tar.gz"
      sha256 "54031204105c1012a22ac3cd4532a983577df4a53471a0d3a663b678d5749488"
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
