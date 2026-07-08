class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3340.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3340.0/lightdash-cli-0.3340.0-macos-arm64.tar.gz"
      sha256 "b2a1503273a060694a1d3bcd1fee0347fc8b3eee41660432cc990799cf56a6ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3340.0/lightdash-cli-0.3340.0-macos-x64.tar.gz"
      sha256 "a586f7583fa5bd4cd6ed7802218ae034012329ff6613f35bc4e891337113e885"
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
