class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3262.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3262.0/lightdash-cli-0.3262.0-macos-arm64.tar.gz"
      sha256 "7f557ec2b725f0d9c4d0607093ce8906a01cce43e92b897eabecfeed5352ba8d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3262.0/lightdash-cli-0.3262.0-macos-x64.tar.gz"
      sha256 "ddf114ddcf8fe05f24355ff1696ea15f48bdaf7926b5499275aef8d7360a571e"
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
