class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.129.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.129.0/lightdash-cli-2.129.0-macos-arm64.tar.gz"
      sha256 "5c6943e68bc9c7ad71614c8837164638fbf1668b2076fe48f5d3006ce41c2497"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.129.0/lightdash-cli-2.129.0-macos-x64.tar.gz"
      sha256 "2b8949ebbbff395fbf9f747781a9c8ce22e0b3c164bcd4bfae7efde13325fffa"
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
