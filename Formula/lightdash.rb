class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.74.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.74.1/lightdash-cli-1.74.1-macos-arm64.tar.gz"
      sha256 "ef87faa65895ad92939791bc0dc543492c3ea77d0b3762ce39be20406a8c0eac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.74.1/lightdash-cli-1.74.1-macos-x64.tar.gz"
      sha256 "b472001a9b4537fb836649c1b7cd30f0cc157653278f0e91f7e8ef075c93ac08"
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
