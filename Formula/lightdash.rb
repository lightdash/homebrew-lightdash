class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.219.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.219.0/lightdash-cli-1.219.0-macos-arm64.tar.gz"
      sha256 "3de120ff9685309624c3c44236cf16f2653fd5556209f9d2627c9835a4c01573"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.219.0/lightdash-cli-1.219.0-macos-x64.tar.gz"
      sha256 "00557b72fa68d5f8a2ccaa9d98a99099c0c522650745c292457d12c639659339"
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
