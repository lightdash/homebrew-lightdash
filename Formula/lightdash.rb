class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2209.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.0/lightdash-cli-0.2209.0-macos-arm64.tar.gz"
      sha256 "7e3508a597cfa5083eb156d9ef28fe4067e3ec66b40de51886e72683033d4f98"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2209.0/lightdash-cli-0.2209.0-macos-x64.tar.gz"
      sha256 "79df0758340641aa06a67dc9da1442d0607fb62f55b1c76eebd342215240ecde"
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
