class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2580.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2580.3/lightdash-cli-0.2580.3-macos-arm64.tar.gz"
      sha256 "3b54d359792917bf6cf3471bb1631d8098f585c211bae9870bc1d43b195eb40a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2580.3/lightdash-cli-0.2580.3-macos-x64.tar.gz"
      sha256 "3ceeb7c2d4648be843c151583a9cd5003cd3b8a9c62b2594f1053514ed11eb00"
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
