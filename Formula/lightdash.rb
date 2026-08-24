class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.251.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.0/lightdash-cli-1.251.0-macos-arm64.tar.gz"
      sha256 "68cada1c133ed8196ff30be49350c82b654903057fb05352f5b9085b61b38255"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.0/lightdash-cli-1.251.0-macos-x64.tar.gz"
      sha256 "5c33eb98f2d5747c1926bdf381d3890f233c60729b082892a476feb8407e1090"
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
