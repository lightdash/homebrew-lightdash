class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3254.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3254.2/lightdash-cli-0.3254.2-macos-arm64.tar.gz"
      sha256 "5f5739b5bab0b9ca76517dafb2b2bba543249602b5a6494d84ca21702bb76aea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3254.2/lightdash-cli-0.3254.2-macos-x64.tar.gz"
      sha256 "ec8b701bed0b1533496680ec7e2424f85a09ed7fa96cf950ba2c049f9b0e95f1"
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
