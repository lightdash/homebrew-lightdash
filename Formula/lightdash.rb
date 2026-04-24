class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2805.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2805.0/lightdash-cli-0.2805.0-macos-arm64.tar.gz"
      sha256 "eeab5582db72eaa0b4ca9d044e01dcd70ef4b7211b70e435fa3e18a0ee8adf37"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2805.0/lightdash-cli-0.2805.0-macos-x64.tar.gz"
      sha256 "53f9d6411580a0458e00ee595ff28935a8766a135c542a3c65cb1b0839bd9f2f"
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
