class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.156.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.156.0/lightdash-cli-2.156.0-macos-arm64.tar.gz"
      sha256 "7968f3868aefc93f342039995db388d94e6a13b6e5733691802abdd5940d9e26"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.156.0/lightdash-cli-2.156.0-macos-x64.tar.gz"
      sha256 "587f2c5ce726a6538ba34aac1998aed5b044dcc419c6d191c24ca6a95bded480"
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
