class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.54.0/lightdash-cli-1.54.0-macos-arm64.tar.gz"
      sha256 "bc576c16bf3ccf5f8aa7e45875cf9233e33bf4d71f3b97e1bab397d7e578ed6e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.54.0/lightdash-cli-1.54.0-macos-x64.tar.gz"
      sha256 "b94df04fee7d523b5772ae75d2d5abf3a02f0cf64382a3edda35ec2b693ad307"
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
