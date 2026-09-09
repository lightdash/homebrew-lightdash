class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.176.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.176.0/lightdash-cli-2.176.0-macos-arm64.tar.gz"
      sha256 "d97bd8422c06eb5d069075899a0c95cff1659cf15d0dd9e7241cc9b0c3df3dd6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.176.0/lightdash-cli-2.176.0-macos-x64.tar.gz"
      sha256 "2b7eab8748bd81e258082000bc4f6f290d4ec28496dbcf3d40013f650e1cb493"
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
