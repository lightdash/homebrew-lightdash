class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.146.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.0/lightdash-cli-1.146.0-macos-arm64.tar.gz"
      sha256 "f902a12566014e7a7c6f55bdcf8ba704308daf3348396f1eb548dd53def61b59"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.146.0/lightdash-cli-1.146.0-macos-x64.tar.gz"
      sha256 "b1a529a28f5fd2881565fc3f6173ffcfa903bba66005b51068cfad8eb843cc5d"
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
