class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2671.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2671.0/lightdash-cli-0.2671.0-macos-arm64.tar.gz"
      sha256 "05cc61f482971ff54b09c9876e54d3ca316d94accc60e66864bbf8eeba4ddc9c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2671.0/lightdash-cli-0.2671.0-macos-x64.tar.gz"
      sha256 "63e38d8302755a65a052ce807f29ce141d04db40f872b2e856909e7c66d5226c"
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
