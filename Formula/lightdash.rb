class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.191.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.191.1/lightdash-cli-2.191.1-macos-arm64.tar.gz"
      sha256 "6808c9c0f375e82fd026bc6bbb114515b2bf9d2b06297bd0285851720935150f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.191.1/lightdash-cli-2.191.1-macos-x64.tar.gz"
      sha256 "d8ff63bd3236396fce01f7fe5a91d183bacfd460df6cf33512f95ab400f18814"
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
