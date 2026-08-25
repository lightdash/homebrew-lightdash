class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.0.0/lightdash-cli-2.0.0-macos-arm64.tar.gz"
      sha256 "7eb144cdd7122d2b4da9853b0e136bdb3da69a4627e4743fbfa24f15d23c529e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.0.0/lightdash-cli-2.0.0-macos-x64.tar.gz"
      sha256 "d2be6c271b08fb7237c5bfb5598c7f5ae21f098563acfc740c2a42cfefb6c485"
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
