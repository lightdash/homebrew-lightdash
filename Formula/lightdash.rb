class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3392.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3392.0/lightdash-cli-0.3392.0-macos-arm64.tar.gz"
      sha256 "1d3d70754df13e615c88195cec3d347184683968717c23176440f4a963420bc2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3392.0/lightdash-cli-0.3392.0-macos-x64.tar.gz"
      sha256 "4a79bb073d98d4ff3a7974836e96cc09e685d708869620c435fdbc90304dcdcf"
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
