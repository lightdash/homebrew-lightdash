class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3153.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3153.0/lightdash-cli-0.3153.0-macos-arm64.tar.gz"
      sha256 "8781b1601e8ba43cbfdcfcb594c08ffc7bfe5ab2ff99a7fc526f994f59cdee4c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3153.0/lightdash-cli-0.3153.0-macos-x64.tar.gz"
      sha256 "811b7eadd957cbc9418f4d7b1a997d8c7c3f629cd665cc54c1caf921ace8a7b4"
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
