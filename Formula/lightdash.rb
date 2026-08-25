class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.257.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.257.2/lightdash-cli-1.257.2-macos-arm64.tar.gz"
      sha256 "47343a33383c876af301e1995241d2774386c2e2f95620ac6fb6f4a7bd357cd4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.257.2/lightdash-cli-1.257.2-macos-x64.tar.gz"
      sha256 "9098a37f23b58b3f71eea6507bdf087598ec5bcaf0d0c5c469c8fd63bf12b0cc"
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
