class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3147.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3147.0/lightdash-cli-0.3147.0-macos-arm64.tar.gz"
      sha256 "13058d13272b399fab61a0e10f190b0add3cbcc8f2991af336bc946485a1a56d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3147.0/lightdash-cli-0.3147.0-macos-x64.tar.gz"
      sha256 "83b6be17fa434f0e88336f217e6b41034966ecb7b7c4fbe799888be88dd495dc"
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
