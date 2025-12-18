class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2262.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.8/lightdash-cli-0.2262.8-macos-arm64.tar.gz"
      sha256 "7bdb5207c1f8bd73ea16cbc2077c2374dcf366ed782ab64b13a824cf922725a5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.8/lightdash-cli-0.2262.8-macos-x64.tar.gz"
      sha256 "d032b0979823b75b80e51b3e7bfd4d637494f4175c0c16612723b10a7f3808ba"
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
