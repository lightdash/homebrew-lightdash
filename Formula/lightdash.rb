class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.245.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.245.1/lightdash-cli-2.245.1-macos-arm64.tar.gz"
      sha256 "f1ab0ff60f0af11d0fa02c6913d552725cc0155d18f9d4810a093f6e1d5f3bfb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.245.1/lightdash-cli-2.245.1-macos-x64.tar.gz"
      sha256 "c39a7e33f769608c54bc3fc5f34cd743c08025256d2936f07496eac8cb673581"
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
