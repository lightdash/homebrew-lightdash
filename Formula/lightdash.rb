class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2702.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2702.1/lightdash-cli-0.2702.1-macos-arm64.tar.gz"
      sha256 "86ccdbf2d7271ea68b602a1b0658dcf455bbb8368087a4b9ccda3912322b4e4c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2702.1/lightdash-cli-0.2702.1-macos-x64.tar.gz"
      sha256 "1a1a7e911aa6e2d306bcb2d145ec5c127a800df480ced54557284ce5cd971cb6"
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
