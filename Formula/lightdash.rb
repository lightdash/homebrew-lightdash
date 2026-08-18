class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.195.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.195.0/lightdash-cli-1.195.0-macos-arm64.tar.gz"
      sha256 "c1a72d1b41857c13a34ee3a728618b23c3b31dfddb3101dfee2bc575166c10b5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.195.0/lightdash-cli-1.195.0-macos-x64.tar.gz"
      sha256 "e36621101c7711c8b8e174333a856b388e506b9c4ecbb58d6936a65c118f7cfe"
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
