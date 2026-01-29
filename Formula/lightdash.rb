class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2399.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2399.0/lightdash-cli-0.2399.0-macos-arm64.tar.gz"
      sha256 "fa3cb15accf63af3296f438f7ba65f498f8da0a65fcc05b6506002560914c640"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2399.0/lightdash-cli-0.2399.0-macos-x64.tar.gz"
      sha256 "712600c598c221591fa951cd46c867b4973fd0d2200edfe77480f3208790b2ce"
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
