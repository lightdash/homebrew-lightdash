class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2481.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2481.0/lightdash-cli-0.2481.0-macos-arm64.tar.gz"
      sha256 "ea9859d69e1c850e71510c0a665fca758fd52299e5af7ae2860ddab2c08f2ceb"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2481.0/lightdash-cli-0.2481.0-macos-x64.tar.gz"
      sha256 "5715e073f0b6d6cffdf978e4015077b0d08da70974f18be809200e9947761d2a"
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
