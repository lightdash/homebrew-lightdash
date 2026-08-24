class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.241.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.241.1/lightdash-cli-1.241.1-macos-arm64.tar.gz"
      sha256 "93dd88f613c6beaf3e212d23f58912ac267a5771f034b7c047321c43315503c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.241.1/lightdash-cli-1.241.1-macos-x64.tar.gz"
      sha256 "8077a062f40b0738aa0c0a9e45190651d19544552755eebfb9ecdf7f340a4fe3"
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
