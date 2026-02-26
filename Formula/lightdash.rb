class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2530.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2530.1/lightdash-cli-0.2530.1-macos-arm64.tar.gz"
      sha256 "c516fcb928cb40cf03c6d2f0c58f0f773f92be5e347bb0a5d4c476d1d3133be7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2530.1/lightdash-cli-0.2530.1-macos-x64.tar.gz"
      sha256 "208cab14d5ca3e11a25cf816073a3c97e8ad4f713bf1d214248611818c881d87"
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
