class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.71.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.71.3/lightdash-cli-2.71.3-macos-arm64.tar.gz"
      sha256 "6eb626213e01a605d6fc756feb2496938e47e92f213cde809c374d2ff879f0ef"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.71.3/lightdash-cli-2.71.3-macos-x64.tar.gz"
      sha256 "76011b64c970cd83ad7e89da3fe2bb9c8b79b1a9157eee0ada4e89ecb4bfb227"
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
