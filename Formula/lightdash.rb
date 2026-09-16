class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.242.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.0/lightdash-cli-2.242.0-macos-arm64.tar.gz"
      sha256 "893422611a9fcb5e3c42c2aa1337d14dc3ff93a22ade5deac7ef0dd13578ce18"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.0/lightdash-cli-2.242.0-macos-x64.tar.gz"
      sha256 "279c46a4efda44c0547414dc81dddfb3ad16aa997a9d4ee38444d9ac354a509b"
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
