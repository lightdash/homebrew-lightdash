class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.113.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.113.1/lightdash-cli-1.113.1-macos-arm64.tar.gz"
      sha256 "8dae6496ca237c75f070812426e1c4fff455057f8b91e3592e6f933fce6150c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.113.1/lightdash-cli-1.113.1-macos-x64.tar.gz"
      sha256 "c34153cb16b4fbf72b1210658a19c8b50273cb682038babcaf04537c179128c3"
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
