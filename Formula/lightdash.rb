class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2998.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2998.1/lightdash-cli-0.2998.1-macos-arm64.tar.gz"
      sha256 "9a00d8675c419f9a450208493487d8dafc802fe65426f69a9d128ac019c6647f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2998.1/lightdash-cli-0.2998.1-macos-x64.tar.gz"
      sha256 "7a85920418409e836cacb07ba4a7f409b23721d689735aa59a68a83964443e2d"
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
