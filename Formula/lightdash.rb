class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.185.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.1/lightdash-cli-2.185.1-macos-arm64.tar.gz"
      sha256 "42b7073e460a0a2239b42ed3915834a6fbebcfd6ae3c31b64aa531e45d2bfcf4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.185.1/lightdash-cli-2.185.1-macos-x64.tar.gz"
      sha256 "b24bd6d3f0f42a30946a9fd5ca1b9ab2b04bd8bb25f41200af2cae6d413919e5"
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
