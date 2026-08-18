class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.196.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.196.0/lightdash-cli-1.196.0-macos-arm64.tar.gz"
      sha256 "0481fca571d37371c010cfbd2c83dc6139e8c3a0e69dccae1ae2842b0bf4c51e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.196.0/lightdash-cli-1.196.0-macos-x64.tar.gz"
      sha256 "4cc1c66c944f3415b9e40b6cd9a9a27e182ec29c4fc7ae1311b719ed8413c904"
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
