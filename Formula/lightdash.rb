class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.236.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.236.0/lightdash-cli-1.236.0-macos-arm64.tar.gz"
      sha256 "59b5764f7e7ef98de0751d7d258a73835d7eaf45b8a97c7c4ffb20aa848b47cb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.236.0/lightdash-cli-1.236.0-macos-x64.tar.gz"
      sha256 "12df8a8528071bdaaac6158edf5a7bcff718e3398f2315d1bf21427956ebc817"
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
