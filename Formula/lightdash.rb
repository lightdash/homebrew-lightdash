class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3454.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3454.0/lightdash-cli-0.3454.0-macos-arm64.tar.gz"
      sha256 "ad4664ae062aec205a3fa5eefdc5b78ca37c0b0c388aab7ee4d980fe6e2f845b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3454.0/lightdash-cli-0.3454.0-macos-x64.tar.gz"
      sha256 "dd5adc676f1338d0916b68cf11983103aaf33a58cb696031b468251e7a378ce5"
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
