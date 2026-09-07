class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.146.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.146.0/lightdash-cli-2.146.0-macos-arm64.tar.gz"
      sha256 "015306eb4933e9461d0575cffd10c11f3a1c083ba7e1575b626ca5d58b3a49ff"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.146.0/lightdash-cli-2.146.0-macos-x64.tar.gz"
      sha256 "53b22c26108e884ed6f897b04d5c102c91285ffee37e1c89ca68b05bac87d21a"
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
