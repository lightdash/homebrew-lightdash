class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2448.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2448.0/lightdash-cli-0.2448.0-macos-arm64.tar.gz"
      sha256 "764085eda7eef5318d96203759b0b40bc80c5e95a08684e9a4343f6cd5cbcce2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2448.0/lightdash-cli-0.2448.0-macos-x64.tar.gz"
      sha256 "d99dbe243c39d8fa477a889a0f186eb092538fa93359eeab80abc63cc7644a72"
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
