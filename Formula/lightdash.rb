class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.49.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.49.1/lightdash-cli-2.49.1-macos-arm64.tar.gz"
      sha256 "adb81665c7012d3aeec1455c7c2b2701ef45c4d2f1a4c610919a018b1003d908"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.49.1/lightdash-cli-2.49.1-macos-x64.tar.gz"
      sha256 "53d9bd1cb9e95a3c8c9c9727c5015d15f29ba1aeafebfaff84842e67c05eb966"
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
