class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2945.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2945.1/lightdash-cli-0.2945.1-macos-arm64.tar.gz"
      sha256 "16b9cbbfc529738a1a415c82ca689706a61fb8dec56f33a0da943bd32f8feb26"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2945.1/lightdash-cli-0.2945.1-macos-x64.tar.gz"
      sha256 "b7b22cfa5490e77a6162e7504214cd36d0b640de103ba955d32cce9a394b39af"
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
