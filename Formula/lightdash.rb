class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.232.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.232.1/lightdash-cli-1.232.1-macos-arm64.tar.gz"
      sha256 "871551d7913c0509c5ddf1d316f0b04f577add7f3a795e499691f6405f3b57a8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.232.1/lightdash-cli-1.232.1-macos-x64.tar.gz"
      sha256 "fddc3093a2ad40802b75c10e2067837db9c3a1833f32723bb6668aab4c771e9b"
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
