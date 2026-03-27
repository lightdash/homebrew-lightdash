class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2682.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2682.0/lightdash-cli-0.2682.0-macos-arm64.tar.gz"
      sha256 "c3666a0dd60e11f5a39a1a1dce6addf5b9067faa56f572a79bd336dca9188674"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2682.0/lightdash-cli-0.2682.0-macos-x64.tar.gz"
      sha256 "eced4bb01ac0cb700f2bee4b5a1c77b83f59702c77f3dd57b455e9aa42652c50"
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
