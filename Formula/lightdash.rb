class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.261.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.261.0/lightdash-cli-1.261.0-macos-arm64.tar.gz"
      sha256 "08b7c1fdae2a129d436ec0fe7d7452f5b42b1461574a8a1517c0268005822ef7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.261.0/lightdash-cli-1.261.0-macos-x64.tar.gz"
      sha256 "538e9e56876e63eba2abc07498711f9ea40b65ccd6d9eda09184d1e5fac16cf6"
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
