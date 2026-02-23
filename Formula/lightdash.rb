class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2508.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2508.0/lightdash-cli-0.2508.0-macos-arm64.tar.gz"
      sha256 "896b28a6d64d23379c0b66fe11c42143113debf5a29136a85254d343fc7ea17d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2508.0/lightdash-cli-0.2508.0-macos-x64.tar.gz"
      sha256 "fb6b4d2600ecac4da36f73d3173c9c5d09d5f16a46259532655e54f229b833c0"
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
