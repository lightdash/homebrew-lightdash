class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2243.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2243.1/lightdash-cli-0.2243.1-macos-arm64.tar.gz"
      sha256 "b407e9644ac15df0c80277078556e42cb9d0d1a7cdbed8002d7baec59a3d8080"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2243.1/lightdash-cli-0.2243.1-macos-x64.tar.gz"
      sha256 "fa405b8413c892e61ae157c702b84b0fe5b571c282fb0407f8dea8f1b471da15"
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
