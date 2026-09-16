class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.227.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.227.0/lightdash-cli-2.227.0-macos-arm64.tar.gz"
      sha256 "9fa1b6ef7959bfda8e19f3f45fa59ccf7a237eb06f1630ed7f65f4f0c7a1117b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.227.0/lightdash-cli-2.227.0-macos-x64.tar.gz"
      sha256 "5015f0144c8ae9f22b53a0189de96e42f6873a01c6d3c9389a9f2add0b854e5a"
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
