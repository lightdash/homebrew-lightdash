class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.188.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.188.0/lightdash-cli-2.188.0-macos-arm64.tar.gz"
      sha256 "891d8432e933259ac0d4c8e7f7e0d7eb2658a36de3de31fd854b15ddfff5e551"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.188.0/lightdash-cli-2.188.0-macos-x64.tar.gz"
      sha256 "62b06b30ec03ed7e86228b10ed22d0e6f7bb94d88ac854031a2a9c69ae06d67a"
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
