class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.206.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.206.2/lightdash-cli-2.206.2-macos-arm64.tar.gz"
      sha256 "1e19f12d7d241f5da913439ca5fdd6f6e9ff3b1b0f6cc41957264e59db4734a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.206.2/lightdash-cli-2.206.2-macos-x64.tar.gz"
      sha256 "0b15e50f884e6c02f87f7a81aaa7175ea8e3d3ca814e1ac01f5266be59dc166c"
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
