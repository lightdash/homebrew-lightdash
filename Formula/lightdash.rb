class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3137.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3137.0/lightdash-cli-0.3137.0-macos-arm64.tar.gz"
      sha256 "285a80394bdd0c5281e8f0cd5f89c794a060d8f4737f293299589e69b4c306d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3137.0/lightdash-cli-0.3137.0-macos-x64.tar.gz"
      sha256 "a68fa4cda31ac0b6e9d61fc912a3486b49e4b7705aaededd3b7fc749175bba09"
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
