class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2653.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2653.0/lightdash-cli-0.2653.0-macos-arm64.tar.gz"
      sha256 "dcfe4e3e0caca999caf71363637d2cada55431ede1cdafc3834929c7e9b90264"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2653.0/lightdash-cli-0.2653.0-macos-x64.tar.gz"
      sha256 "c872e34faea8ffa03a72d8c256342b5d3e094d14de644bd8d7ee21a7cb1d2b34"
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
