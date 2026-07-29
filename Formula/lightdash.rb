class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.34.0/lightdash-cli-1.34.0-macos-arm64.tar.gz"
      sha256 "e9fbf0da76a0835adc06df492a683379e9e63f9148e78bf52ced0434b7fffa6c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.34.0/lightdash-cli-1.34.0-macos-x64.tar.gz"
      sha256 "0629cda79e49934f8d87683d647b3e10ccd4ca914b04ad301b6441c463aebe02"
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
