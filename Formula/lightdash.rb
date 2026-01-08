class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2318.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2318.1/lightdash-cli-0.2318.1-macos-arm64.tar.gz"
      sha256 "ebf0d0840bd5284aa8163ed01415dba1f90e212816bfb2c3d4806c4cc4cc7e12"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2318.1/lightdash-cli-0.2318.1-macos-x64.tar.gz"
      sha256 "2f5ce1cb796d4b2bc7b295828db6dfbea8c6b42396a32898a7babd2ac1f9ea28"
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
