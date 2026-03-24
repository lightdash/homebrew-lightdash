class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2657.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.5/lightdash-cli-0.2657.5-macos-arm64.tar.gz"
      sha256 "176c672f7b0f3a35faf9b898fdf0a840eb00a8bdc4e83e25ddf6956a5f6f0fc7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2657.5/lightdash-cli-0.2657.5-macos-x64.tar.gz"
      sha256 "822f34af85729a9a8df4862173695e7543ded30beb67ed7ea2ca9e80c7399064"
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
