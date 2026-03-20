class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2645.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2645.0/lightdash-cli-0.2645.0-macos-arm64.tar.gz"
      sha256 "3a8f15c4ce13bc68c83d043ac57af45560a493579827a51d723c853815e3923a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2645.0/lightdash-cli-0.2645.0-macos-x64.tar.gz"
      sha256 "b0dfc6b41afaed0624d8f848e8229e4c7e5a82b53aa03d27e876eff4a38d3f2c"
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
