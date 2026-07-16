class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3403.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3403.0/lightdash-cli-0.3403.0-macos-arm64.tar.gz"
      sha256 "3a0d37c70fb6fb6b0852d6da775557d2a1820370e20e2c6fbb2c19a35d06930c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3403.0/lightdash-cli-0.3403.0-macos-x64.tar.gz"
      sha256 "2da57386b8305de867c8c918af7d17a987eb2b1065e819a046c165a71c281f83"
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
