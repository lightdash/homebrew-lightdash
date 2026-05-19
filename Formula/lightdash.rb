class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2974.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2974.1/lightdash-cli-0.2974.1-macos-arm64.tar.gz"
      sha256 "2cf4839a7c5a1f58609d17e3d8ceb12bb676d8e57dc07debc811faedb3fa5ea1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2974.1/lightdash-cli-0.2974.1-macos-x64.tar.gz"
      sha256 "2607ed7d92c1f524d1a49af43fd1c3ca090045e4de6f3f48bf8d09c8eb3da49c"
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
