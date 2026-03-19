class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2640.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2640.0/lightdash-cli-0.2640.0-macos-arm64.tar.gz"
      sha256 "f920904b3ee406a3d52f077c17aac097ac849e3755ed22ca1cc5e4d587d90e55"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2640.0/lightdash-cli-0.2640.0-macos-x64.tar.gz"
      sha256 "72b826a7de82adf35da64cef2706409c561fac8b33ee81aec4444396ca9658fd"
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
