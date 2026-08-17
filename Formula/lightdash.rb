class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.172.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.1/lightdash-cli-1.172.1-macos-arm64.tar.gz"
      sha256 "1ce8d5fc329dd10b6096f0b16631e98143352a0f8262b4092de8519a782162e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.172.1/lightdash-cli-1.172.1-macos-x64.tar.gz"
      sha256 "c9cf1a655ed40169647d25629ad3bd7d2077515c34735746fd6c13f7b424b069"
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
