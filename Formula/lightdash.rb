class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.93.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.93.0/lightdash-cli-1.93.0-macos-arm64.tar.gz"
      sha256 "d327ab98ebf68c134cda717a29adb7fb3dcf2c83e5ada728aad517e214bf705a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.93.0/lightdash-cli-1.93.0-macos-x64.tar.gz"
      sha256 "0ccc9141c7ed865589ccce1a56b4979003c0bdf3d646f1641a20e3f3a280b9e5"
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
