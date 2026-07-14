class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3382.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3382.1/lightdash-cli-0.3382.1-macos-arm64.tar.gz"
      sha256 "2a6b4550c2c77a67af36ba4f52072583383b26aea2ff141ee620f43632728f02"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3382.1/lightdash-cli-0.3382.1-macos-x64.tar.gz"
      sha256 "552abed938e3ac0e4b5b15f27007cdf7a3d24ed1842f21bf4bfbbbe86cfc171a"
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
