class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.34.0/lightdash-cli-2.34.0-macos-arm64.tar.gz"
      sha256 "b06b7063fab2d8a40560ef98022fa882998275432ec9b7428e60717ed820a3ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.34.0/lightdash-cli-2.34.0-macos-x64.tar.gz"
      sha256 "c4a9a9039d78f7e2cd4dded9135829bf48123ae4cd4bcab7c50afe05b756d397"
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
