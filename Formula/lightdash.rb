class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2858.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2858.1/lightdash-cli-0.2858.1-macos-arm64.tar.gz"
      sha256 "3dcfbdc5bc60749d7d01009e3d0d2d8926432e7fe30ec55ffea097d7a3ddc62e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2858.1/lightdash-cli-0.2858.1-macos-x64.tar.gz"
      sha256 "29dcc662673e998ed9b5f7a512be14ae75bb6ca58fe6d37796e3796888e8a297"
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
