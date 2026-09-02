class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.95.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.95.0/lightdash-cli-2.95.0-macos-arm64.tar.gz"
      sha256 "2eddcbcd6aa281a0e6a0bd8894ca0c492e142d3789296236a62ae2533a044773"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.95.0/lightdash-cli-2.95.0-macos-x64.tar.gz"
      sha256 "1f962149f53b11ff576e17debc79455989885f8ea4dd807c4fa2f1972e72b481"
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
