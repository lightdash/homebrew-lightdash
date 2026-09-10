class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.191.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.191.0/lightdash-cli-2.191.0-macos-arm64.tar.gz"
      sha256 "031756642f87280d793a2d5ea6bbfcb9c78188fa31a08bf74e23e58b2f7177eb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.191.0/lightdash-cli-2.191.0-macos-x64.tar.gz"
      sha256 "f4b5869e70b9b2351ab7670b597103bee62a90dac26e8b43fb6add1929df0e4c"
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
