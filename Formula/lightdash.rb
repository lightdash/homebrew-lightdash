class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.242.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.5/lightdash-cli-1.242.5-macos-arm64.tar.gz"
      sha256 "48b87322e66c0e3529be703833d0cd1d122631869ebdcf91628657d1750646c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.242.5/lightdash-cli-1.242.5-macos-x64.tar.gz"
      sha256 "b088a8b687d85178d5cc93b27f3e1f2c2c5d2afa1b9a16775848110354733f92"
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
