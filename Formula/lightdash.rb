class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2349.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2349.1/lightdash-cli-0.2349.1-macos-arm64.tar.gz"
      sha256 "1437bf68c665728515d12039caa3b0202eb8a1202bc1a9cc984caa93b4002b23"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2349.1/lightdash-cli-0.2349.1-macos-x64.tar.gz"
      sha256 "ab0222356718f7844ea2e14866ba2418cdbf1418bd2ab55593e608765d42f41e"
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
