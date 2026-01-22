class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2365.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2365.0/lightdash-cli-0.2365.0-macos-arm64.tar.gz"
      sha256 "63e3b212c3a3753708834d643c62ad712693c8595a7b5d4da1d240f3cb19ac54"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2365.0/lightdash-cli-0.2365.0-macos-x64.tar.gz"
      sha256 "d11a77613749c98b10645eb6e3ecb8696f065d4a1b67541493b9cdb3607f5208"
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
