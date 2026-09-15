class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.226.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.226.2/lightdash-cli-2.226.2-macos-arm64.tar.gz"
      sha256 "2df02b17fecd6e4d89683224b77346d54c72a8444637b1fa62112a760e3767a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.226.2/lightdash-cli-2.226.2-macos-x64.tar.gz"
      sha256 "6b1add65ff8e120ef37547e1babf89ba2c0fce1d5d1c59471f0cbcf5c40c2c18"
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
