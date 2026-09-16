class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.236.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.236.1/lightdash-cli-2.236.1-macos-arm64.tar.gz"
      sha256 "e7bafe80acb69b04a25fd4c03b030ecb1155e67d291b092f6b080f6b0e006af4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.236.1/lightdash-cli-2.236.1-macos-x64.tar.gz"
      sha256 "064f745ec8f3f5de6ea8d3a3f68f94eb263d02b62757f7a3a6a83bb64ff7a748"
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
