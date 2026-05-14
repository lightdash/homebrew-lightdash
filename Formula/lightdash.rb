class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2939.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2939.0/lightdash-cli-0.2939.0-macos-arm64.tar.gz"
      sha256 "61e2128dea22073863d8e46e3d450094d4f74b77bcacdac15228dea9688dd094"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2939.0/lightdash-cli-0.2939.0-macos-x64.tar.gz"
      sha256 "7136ad94f6c64e04ecb12c73666d69fb3014e1aa4b329c6f66fe61c61eeb36ff"
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
