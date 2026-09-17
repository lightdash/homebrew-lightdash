class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.258.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.258.0/lightdash-cli-2.258.0-macos-arm64.tar.gz"
      sha256 "87a54b286f42cc52781b0e982209223b6f9dbce2a0a7aa44d76a5efc94e6cd6a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.258.0/lightdash-cli-2.258.0-macos-x64.tar.gz"
      sha256 "568f6f2eb7ffa0e5ac23200cec9bd8489035450b2e48795f83075d4d9539cfd0"
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
