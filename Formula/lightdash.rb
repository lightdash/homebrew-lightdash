class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.39.0/lightdash-cli-1.39.0-macos-arm64.tar.gz"
      sha256 "0dd455d7b3be0b8eeda2877dded2dd362cb574c6f3e7ed667c3e440dffd25382"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.39.0/lightdash-cli-1.39.0-macos-x64.tar.gz"
      sha256 "cb46a432629dff4d3426f9eb0a4318de30f7dd4dc3cf4fd842470a52ce387afe"
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
