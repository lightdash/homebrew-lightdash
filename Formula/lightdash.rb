class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2853.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2853.1/lightdash-cli-0.2853.1-macos-arm64.tar.gz"
      sha256 "2a2628546ea1f622fc4d46c8f535fc95f3ca6c08c7e3f5d46bdf1f4f5ac7d982"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2853.1/lightdash-cli-0.2853.1-macos-x64.tar.gz"
      sha256 "066c533df9e629f22dc643775b1a328174f2a7de7021ce2f2c30c90c1f17f30d"
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
