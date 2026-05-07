class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2887.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2887.0/lightdash-cli-0.2887.0-macos-arm64.tar.gz"
      sha256 "4e5b91ef508cf6712eb858872b29f8b078c23c596702a5d1e79610805d354a77"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2887.0/lightdash-cli-0.2887.0-macos-x64.tar.gz"
      sha256 "953eb4a29f115dbdda0b2a394f11f66c033b0899c95599b8c67dc13707398724"
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
