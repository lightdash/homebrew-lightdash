class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.251.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.6/lightdash-cli-1.251.6-macos-arm64.tar.gz"
      sha256 "7f4d7a4af5a7b6236d62a864a1e69fe721db1ddca14e5cdb364842c22a46a7d3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.6/lightdash-cli-1.251.6-macos-x64.tar.gz"
      sha256 "76d8ad24cf456cd66e9a5be4a2a7e4d01a0c62adeb8829183887dc60393e88ed"
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
