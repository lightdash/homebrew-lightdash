class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.242.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.7/lightdash-cli-1.242.7-macos-arm64.tar.gz"
      sha256 "8782a8482302090efb997379e81d0de11c3a484c8ef4ead23da8375a04dc178c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.7/lightdash-cli-1.242.7-macos-x64.tar.gz"
      sha256 "9b2dca341e927e46d237c3416b62063718af5cdfa0ac6df31f00fee80628d853"
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
