class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.79.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.79.0/lightdash-cli-2.79.0-macos-arm64.tar.gz"
      sha256 "77a0ae2a88494172c9db0f63ab2f3856920a8013dfd6e76b663d5eb23259b50d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.79.0/lightdash-cli-2.79.0-macos-x64.tar.gz"
      sha256 "02535a2d4ece5b16c6fc0c60a34d9e691f5de1f02ee58f5574262c03fa7c378e"
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
