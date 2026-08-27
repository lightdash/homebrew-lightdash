class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.35.0/lightdash-cli-2.35.0-macos-arm64.tar.gz"
      sha256 "ffee8295427d611b1afb00f68d53e27988dc3f82864a6681a5e9a273d9960d76"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.35.0/lightdash-cli-2.35.0-macos-x64.tar.gz"
      sha256 "9d7a549325b83dcbcee7a9151b12b6509e02c86f9a20d76ef2715192a40ffa96"
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
