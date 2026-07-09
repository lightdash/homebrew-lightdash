class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3345.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3345.0/lightdash-cli-0.3345.0-macos-arm64.tar.gz"
      sha256 "7176f2a8b6306adf2cdacc52138656e66b7e9eb11b03d6f48fe8249d41872933"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3345.0/lightdash-cli-0.3345.0-macos-x64.tar.gz"
      sha256 "cef764eecea10c09b16157ce6b6aa28b898d0e812f5c22c1f85b4e7b205d8c63"
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
