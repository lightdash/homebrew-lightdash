class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2432.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2432.0/lightdash-cli-0.2432.0-macos-arm64.tar.gz"
      sha256 "54c97f5701191cd5d3017f362edffc0ba58f2a13f77b92d00bfc2805fa519be2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2432.0/lightdash-cli-0.2432.0-macos-x64.tar.gz"
      sha256 "714225e2d82fa578f57b941a63e775bac55bc073d1a8bf4e2aa5497f9e360ac6"
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
