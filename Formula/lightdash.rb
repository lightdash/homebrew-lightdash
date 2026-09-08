class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.150.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.150.0/lightdash-cli-2.150.0-macos-arm64.tar.gz"
      sha256 "6be320b29c39dd2f428a053bb50c4c4273dd98a97b566e5dc0b0f9a8c4fb317b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.150.0/lightdash-cli-2.150.0-macos-x64.tar.gz"
      sha256 "3a53a455d144eb739f824cce5da6265e1122905c0b274ea104adec35d7143140"
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
