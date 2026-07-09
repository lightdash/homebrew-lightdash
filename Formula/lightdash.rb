class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3348.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3348.0/lightdash-cli-0.3348.0-macos-arm64.tar.gz"
      sha256 "e4304db1f2f2cfab1cdaf7a16dd04c88b33f923775096618f4c56f68e6e169a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3348.0/lightdash-cli-0.3348.0-macos-x64.tar.gz"
      sha256 "f612e0c034a9cba32d407da89f4c248a9015a5c9c1bfcde215d983b67c284edf"
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
