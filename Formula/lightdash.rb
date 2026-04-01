class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2703.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2703.0/lightdash-cli-0.2703.0-macos-arm64.tar.gz"
      sha256 "5c0e472f56b3dcf24f7c35e04f66b74f8c3f4aaa2c14f73459019a8de99d61de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2703.0/lightdash-cli-0.2703.0-macos-x64.tar.gz"
      sha256 "4b47fea057da0ad1a4634369c44aaa610ce2cd053f7e10c735913d20f0cb54a4"
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
