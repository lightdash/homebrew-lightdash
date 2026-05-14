class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2940.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2940.0/lightdash-cli-0.2940.0-macos-arm64.tar.gz"
      sha256 "0906447f1b338b1d2b4e9fce8ef8c9fb62886c26436b9b4fc85c557b7818cb75"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2940.0/lightdash-cli-0.2940.0-macos-x64.tar.gz"
      sha256 "d2e4b407ff8f96b4f63e7c0a7be5f9f0e78085f4524ec2cb1280a988fc8bf3da"
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
