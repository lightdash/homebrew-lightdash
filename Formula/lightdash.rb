class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.247.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.247.0/lightdash-cli-2.247.0-macos-arm64.tar.gz"
      sha256 "71b23f3f6bd7f15db67c18f9c915883c7a3796212a0c7a38856199e23496d381"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.247.0/lightdash-cli-2.247.0-macos-x64.tar.gz"
      sha256 "a49056919d6e52a5508f0844e29aa2b7769060df88acbf5687a034adf0b19e6c"
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
