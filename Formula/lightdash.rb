class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.256.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.256.1/lightdash-cli-1.256.1-macos-arm64.tar.gz"
      sha256 "ea2dc78b48967fc6aca2bc855ae6d32c170dc0c7bfc9089e306c3cb225e6ef06"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.256.1/lightdash-cli-1.256.1-macos-x64.tar.gz"
      sha256 "5d04b5cbbd73dd987a8c7ce348e93977eb6845e855fd042bc5c768bba989a9de"
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
