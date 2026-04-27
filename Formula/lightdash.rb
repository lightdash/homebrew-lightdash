class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2812.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2812.0/lightdash-cli-0.2812.0-macos-arm64.tar.gz"
      sha256 "e84580de3675477693460694e7b6eafd6e72bc1fba0b28cdd1ee26e25f69e573"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2812.0/lightdash-cli-0.2812.0-macos-x64.tar.gz"
      sha256 "ec80b766a50c13e5504f061810a000bd73630aef8dc40ebfc1f7b39ffaa96127"
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
