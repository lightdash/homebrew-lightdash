class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3099.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3099.2/lightdash-cli-0.3099.2-macos-arm64.tar.gz"
      sha256 "d93409cafa8a0f3aa4ad9be43077eeaacfca0d8ac70b2d69271bc6f78576010c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3099.2/lightdash-cli-0.3099.2-macos-x64.tar.gz"
      sha256 "19eeb4c6bc1d04b7768051a6ef75531303bfff85f68d6ed999e053b572f014c2"
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
