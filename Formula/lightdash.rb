class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3410.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3410.0/lightdash-cli-0.3410.0-macos-arm64.tar.gz"
      sha256 "28615af0abb4b2d3b5b3dbd6c0cfb4bd6caf07ca6f1cdcdcfee6b234fbba12d6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3410.0/lightdash-cli-0.3410.0-macos-x64.tar.gz"
      sha256 "0da8b9e23698bac641e3cfed7f15fc52f57d8172230cbf67504cdc2209e7b301"
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
