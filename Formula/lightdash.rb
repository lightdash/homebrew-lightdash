class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2895.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2895.0/lightdash-cli-0.2895.0-macos-arm64.tar.gz"
      sha256 "e2812852ebb0b15bf297dbd13cf54683a390fd521ac11db1701335177c594f07"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2895.0/lightdash-cli-0.2895.0-macos-x64.tar.gz"
      sha256 "558e7a707f08105909ea6bf543084d05ba640a70c4af2aabe7f42f4fdc549911"
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
