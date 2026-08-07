class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.107.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.107.0/lightdash-cli-1.107.0-macos-arm64.tar.gz"
      sha256 "8844377de3de3131f69d85c5312ce8dd3e933a3a3ff28c39cbbaf40ce5341d5d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.107.0/lightdash-cli-1.107.0-macos-x64.tar.gz"
      sha256 "87d25861e6cabe915afa6d3db79a6fbb88795579363ef6bc3ed210bdc045253d"
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
