class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.226.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.226.0/lightdash-cli-1.226.0-macos-arm64.tar.gz"
      sha256 "d51b8b4d24aa4d532958fdbedb1bcbd14fb27b7b77a1be15b11e40cb92a1abe3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.226.0/lightdash-cli-1.226.0-macos-x64.tar.gz"
      sha256 "1876233df99a91b1495cc842a67e7fd2ffbf2a294d990fc8ddd778f18517a440"
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
