class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.151.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.151.3/lightdash-cli-1.151.3-macos-arm64.tar.gz"
      sha256 "8e8364b0c08c0024926bef2554d6c5c6b8dab5ec65080a7ebaffeee49faf0b7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.151.3/lightdash-cli-1.151.3-macos-x64.tar.gz"
      sha256 "26576b12f62c40afcf16c0d6976ad942f0fd690158132d8f19cf0a99443bf914"
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
