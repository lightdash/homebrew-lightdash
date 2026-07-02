class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3287.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3287.0/lightdash-cli-0.3287.0-macos-arm64.tar.gz"
      sha256 "34f80ba55ad5f5986d06826fdd1db59cd4bcd04f5823e268f6f3815545e7919b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3287.0/lightdash-cli-0.3287.0-macos-x64.tar.gz"
      sha256 "622b71980f4dd9c5d08a60cd1df793afd024496199f0bc463026d3fe4531633e"
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
