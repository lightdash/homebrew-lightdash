class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.43.0/lightdash-cli-1.43.0-macos-arm64.tar.gz"
      sha256 "7af50d2b272301f5fed1cb143798e25d3f691634d637ba23be67f9f7ef3a8a75"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.43.0/lightdash-cli-1.43.0-macos-x64.tar.gz"
      sha256 "5365b37fd8b470846a91e7495a33d64bfddaba9a0375a85499705babb4892c56"
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
