class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.184.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.6/lightdash-cli-2.184.6-macos-arm64.tar.gz"
      sha256 "1f3dd915fb07eaec8a54346a45196bd3b31571270f19bfb57ed4fd27ccb6db0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.184.6/lightdash-cli-2.184.6-macos-x64.tar.gz"
      sha256 "fb379a2f80b027445a74ed9b5ed7bad4236a19d9c66f482d98c3ccba4e4e32ec"
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
