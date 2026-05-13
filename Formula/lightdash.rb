class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2928.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2928.0/lightdash-cli-0.2928.0-macos-arm64.tar.gz"
      sha256 "0cf50ca04ae378e2726e5cc810f0c42707d5e692a0368fad582d6d3a140c9981"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2928.0/lightdash-cli-0.2928.0-macos-x64.tar.gz"
      sha256 "b3403704872807aa06ee1a5b35e30540d08a31850c275550060deb3c5da87ba1"
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
