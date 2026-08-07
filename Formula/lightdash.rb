class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.99.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.99.1/lightdash-cli-1.99.1-macos-arm64.tar.gz"
      sha256 "62524c0288ab0d699caa9b1897638c9a35fc4043be9ac80184c411eb28229ce1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.99.1/lightdash-cli-1.99.1-macos-x64.tar.gz"
      sha256 "dd2015aceef453e74bc652d08d8658681d0ef25234b18f85f2fac4c7ed9ec85d"
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
