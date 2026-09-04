class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.134.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.134.1/lightdash-cli-2.134.1-macos-arm64.tar.gz"
      sha256 "b221fafd299b416e31d0fb13d2b9bf1e82c2c2ff313e9ae5b7234bb8da3e572d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.134.1/lightdash-cli-2.134.1-macos-x64.tar.gz"
      sha256 "4fd0b901c503274b0359133576d7f62f53b3d54d609f80eba3aa164607fc474a"
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
