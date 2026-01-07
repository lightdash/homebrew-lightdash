class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2304.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2304.1/lightdash-cli-0.2304.1-macos-arm64.tar.gz"
      sha256 "1699ab93b086ae44d70e21a2f1160d6af98985ca21028b6b06ec546e853e3f1a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2304.1/lightdash-cli-0.2304.1-macos-x64.tar.gz"
      sha256 "7faeaee593fda2d0ba3c0f1e951ee20710bc77517566e355b3f43aa0f3e6d968"
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
