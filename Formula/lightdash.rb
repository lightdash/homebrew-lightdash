class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.193.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.193.1/lightdash-cli-2.193.1-macos-arm64.tar.gz"
      sha256 "e9da7e5975b8869396b0ae5f572a37dcc54347abecf4eb4a1136a0ddb34e6937"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.193.1/lightdash-cli-2.193.1-macos-x64.tar.gz"
      sha256 "8da332751886ba3eb12cd64d626a1d55ae27eb327450c075c24415f80cf525d3"
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
