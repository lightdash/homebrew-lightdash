class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2406.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2406.0/lightdash-cli-0.2406.0-macos-arm64.tar.gz"
      sha256 "2bde88e6e49dfd647f0515276871613fdff494394166fd258cf609a540b2a3bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2406.0/lightdash-cli-0.2406.0-macos-x64.tar.gz"
      sha256 "ba79fe09e2776b3d3d3b254758697d7150f74c31c42379253e0292eeecb4fd03"
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
