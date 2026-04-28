class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2834.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2834.0/lightdash-cli-0.2834.0-macos-arm64.tar.gz"
      sha256 "213de8000b9d59d31b360ab3e148e6d95cf444fccd6df06973e10405b39210a3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2834.0/lightdash-cli-0.2834.0-macos-x64.tar.gz"
      sha256 "9bbc6517539429362d50d3da1a43689192230a5231c105b349150947e108d36f"
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
