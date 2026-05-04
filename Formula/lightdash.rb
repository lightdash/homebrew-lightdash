class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2864.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.3/lightdash-cli-0.2864.3-macos-arm64.tar.gz"
      sha256 "add267b18455d0c2c895115b53fe05439e1852da5c9cd58f37728343cf7695dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.3/lightdash-cli-0.2864.3-macos-x64.tar.gz"
      sha256 "5cac00006b7df842bd4ba40c0842550c1581f10980221dacfde270e22376733c"
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
