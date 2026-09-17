class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.250.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.250.0/lightdash-cli-2.250.0-macos-arm64.tar.gz"
      sha256 "e78a012e12fea12a8a843921b590b609ad778c224bc2aaf511f198b8e2c73db7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.250.0/lightdash-cli-2.250.0-macos-x64.tar.gz"
      sha256 "0dbe11d814b8bb5bdb2fc2fcdbd379d603f03f61900558652c57ef25043d7cb8"
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
