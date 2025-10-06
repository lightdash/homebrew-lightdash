class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2055.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2055.0/lightdash-cli-v0.2055.0-macos-arm64.tar.gz"
      sha256 "1e5a6c811acdc946f0f1a68c46898cd3bf7e3d5e01b89bae2f05f85d001c1933"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2055.0/lightdash-cli-v0.2055.0-macos-x64.tar.gz"
      sha256 "43c2f5e74a0bc060e38b3bcf8f51c007f4aa2f9147b2a427761bbba0dc127b58"
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
