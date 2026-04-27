class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2813.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2813.0/lightdash-cli-0.2813.0-macos-arm64.tar.gz"
      sha256 "6a9c04c61f49960c4f00e8d8c0d17bd033ded2bdd0b54ef816d9f0bf4168f78b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2813.0/lightdash-cli-0.2813.0-macos-x64.tar.gz"
      sha256 "aab73695967e120d77e1408a9de9bd59bc98d26244adb377fe8ddea05175bd75"
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
