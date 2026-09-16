class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.241.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.241.1/lightdash-cli-2.241.1-macos-arm64.tar.gz"
      sha256 "4806deda2d8293390ca3646ea05c28791b88735b8947a8f0311652acf98e7a93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.241.1/lightdash-cli-2.241.1-macos-x64.tar.gz"
      sha256 "e78091136ac1b2a8761ec7ce4fa2a8346fe256c8517672519d34e76f678acc0e"
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
