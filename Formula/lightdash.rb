class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2441.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2441.0/lightdash-cli-0.2441.0-macos-arm64.tar.gz"
      sha256 "7482b031fb1a5b3cb565db78a19297a037f2002a414ea670d1548d8327de86ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2441.0/lightdash-cli-0.2441.0-macos-x64.tar.gz"
      sha256 "9e61e5f22d1ae9ae8724458125b1f182b378f56e6c52872c725d39f708de2138"
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
