class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2236.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2236.1/lightdash-cli-0.2236.1-macos-arm64.tar.gz"
      sha256 "3620046949e012d781b9309337106bbc4c1a84c7fe83043032e4983fd4bca194"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2236.1/lightdash-cli-0.2236.1-macos-x64.tar.gz"
      sha256 "c9f382e5716b67d542c8ee28c09d4e84a22ed23295024ed97e14e609cb80e41e"
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
