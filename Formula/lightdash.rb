class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.101.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.101.1/lightdash-cli-2.101.1-macos-arm64.tar.gz"
      sha256 "c7635c7602aa079c273f15c3308b37ae6d08e8a7b274d98397dba25f6170cdd6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.101.1/lightdash-cli-2.101.1-macos-x64.tar.gz"
      sha256 "a84aae831aaa98c8ad007bb8a38bfcd3b31ecda8a52cd65d473a0e3a8e0d0334"
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
