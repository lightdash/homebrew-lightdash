class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2585.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2585.1/lightdash-cli-0.2585.1-macos-arm64.tar.gz"
      sha256 "6add57475e2694c5d182aebd0197e3ffae3f2421b15cd32e3b22efa087bcbe9a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2585.1/lightdash-cli-0.2585.1-macos-x64.tar.gz"
      sha256 "f944545ac5420404b5bb9d1cc935e6356c8c59c1350e20045cba8e2b589976c9"
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
