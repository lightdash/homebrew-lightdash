class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2816.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2816.0/lightdash-cli-0.2816.0-macos-arm64.tar.gz"
      sha256 "0714c5fca073715e3ab41e1ba704099f795598eea87a83bc9688fcd1a9ab3950"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2816.0/lightdash-cli-0.2816.0-macos-x64.tar.gz"
      sha256 "7413306cced7135f5380228b38b27eaa9127d72c35bbb8c2d22966fc8076f5af"
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
