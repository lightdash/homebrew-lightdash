class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.8.0/lightdash-cli-2.8.0-macos-arm64.tar.gz"
      sha256 "307d050d18222ad5e6e930ba5f220ad2c49165b1b1ca963e82d7a0ff5a8310ac"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.8.0/lightdash-cli-2.8.0-macos-x64.tar.gz"
      sha256 "8248aa96719e3ab60d391d97cdcbff8296de5400beaa0dd9740767c6ad3f59f4"
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
