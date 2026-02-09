class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2444.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2444.0/lightdash-cli-0.2444.0-macos-arm64.tar.gz"
      sha256 "fdf5bbc273aaf30d3e1262ac2c3c5aac87d03ccc1c66aa7960c45ee117420290"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2444.0/lightdash-cli-0.2444.0-macos-x64.tar.gz"
      sha256 "fcce85bf0114f21073dca4daab2817ac6afddad87a9f8192051535bdfbfb2a0a"
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
