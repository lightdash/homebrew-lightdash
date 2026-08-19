class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.205.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.205.0/lightdash-cli-1.205.0-macos-arm64.tar.gz"
      sha256 "953443418bb67a646e9779d0430173daa973a259d871c557dbfa5bf8acfdc8c5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.205.0/lightdash-cli-1.205.0-macos-x64.tar.gz"
      sha256 "33749341883ca933f8ddfec5b8e1e7232aec886d5486f291945b4831cd58607f"
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
