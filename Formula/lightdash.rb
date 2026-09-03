class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.114.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.114.0/lightdash-cli-2.114.0-macos-arm64.tar.gz"
      sha256 "7bf8981091d967652c89214a30d7b930e5b0e860bb2202232cd9cd6163c20242"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.114.0/lightdash-cli-2.114.0-macos-x64.tar.gz"
      sha256 "781768ddfce7dcbbbfbd0de8b3cf8f9e3927b3ad7485152a74d0e1e7cd108068"
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
