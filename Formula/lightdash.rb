class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2801.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2801.0/lightdash-cli-0.2801.0-macos-arm64.tar.gz"
      sha256 "bff8fb26839e7557e56b3a3ff0e009f291fc39c4f3231c747c5454efa0063e44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2801.0/lightdash-cli-0.2801.0-macos-x64.tar.gz"
      sha256 "af72dda72266d9af25e57cd40d2dd394c48968bf66151c246000b58e474e07c8"
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
