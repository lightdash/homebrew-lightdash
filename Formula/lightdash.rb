class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.65.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.65.0/lightdash-cli-1.65.0-macos-arm64.tar.gz"
      sha256 "4ca40af84c66f9d873ff0d0da88058097f9f5eca911b934ae014f02ed3992a0d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.65.0/lightdash-cli-1.65.0-macos-x64.tar.gz"
      sha256 "d71d67f27e4b40cc4c6c1bf932c84b7a1231ae50e9a724853ef4aa903f8a7b7b"
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
