class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2835.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2835.0/lightdash-cli-0.2835.0-macos-arm64.tar.gz"
      sha256 "07f6f7f41614c84041743a2ec4a6674210a0b5b5d3f82ac858f4ba64be4f4e5e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2835.0/lightdash-cli-0.2835.0-macos-x64.tar.gz"
      sha256 "41eafded2e24bc0e1af915102b459686107483c8f52fbf460b69befe62450e3d"
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
