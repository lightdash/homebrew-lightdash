class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.108.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.108.2/lightdash-cli-2.108.2-macos-arm64.tar.gz"
      sha256 "4c0f79134101c2e714650cfd3888857d14bb586606209cb1fe6de3094eb07da2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.108.2/lightdash-cli-2.108.2-macos-x64.tar.gz"
      sha256 "50186a07ec6dfc57a9b68f078a89fb2346e20c8ecb4a8edd9a1505a6f2cdab44"
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
