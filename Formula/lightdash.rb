class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3470.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3470.0/lightdash-cli-0.3470.0-macos-arm64.tar.gz"
      sha256 "e9e01a6ea85798dc31e602b4f88ff0a2f2468909d7c1a049d03f9114bbc7a7e3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3470.0/lightdash-cli-0.3470.0-macos-x64.tar.gz"
      sha256 "018aed5722bb439ccac570fb3c8e3360697d0c9e9f632a655bdaf5b0a720668a"
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
