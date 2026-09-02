class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.85.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.85.0/lightdash-cli-2.85.0-macos-arm64.tar.gz"
      sha256 "331dc6e56f4d97c1b278624ade4c0d2bf3ad7e32c1b1ae34690914ea8b4396d2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.85.0/lightdash-cli-2.85.0-macos-x64.tar.gz"
      sha256 "9a16a5c613755c18bd51d4cf1b0ee0772f6507d276a041b647ececc22a23cdd4"
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
