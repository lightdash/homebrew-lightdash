class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.144.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.144.3/lightdash-cli-1.144.3-macos-arm64.tar.gz"
      sha256 "9e9839916ff7738e78a81822ee061e2840949105d02a6a19d04b707d9bba3180"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.144.3/lightdash-cli-1.144.3-macos-x64.tar.gz"
      sha256 "ad885b1a4a8d82da9e6e249d29638678ca2a90436769fbd8b4f908f494cabce9"
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
