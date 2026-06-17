class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3184.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3184.0/lightdash-cli-0.3184.0-macos-arm64.tar.gz"
      sha256 "858877786c1f097fcc235268b4f7ab07bcbcf864106edf2d9c30208d02030518"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3184.0/lightdash-cli-0.3184.0-macos-x64.tar.gz"
      sha256 "578a3732b28aa41d8ab9582c5fb6a0c58ddaa95db4d2235b7d3c69fba96ecaa4"
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
