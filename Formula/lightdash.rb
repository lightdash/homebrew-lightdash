class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3283.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3283.0/lightdash-cli-0.3283.0-macos-arm64.tar.gz"
      sha256 "a1f3b00da8d0df403dc48286c5f64cc8d4ba3336bdcb76892f3f9a4dbeda2bc8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3283.0/lightdash-cli-0.3283.0-macos-x64.tar.gz"
      sha256 "a986918b451d8f9ea3f2c0860b6b541c77db49ee1bc9e922950f3f66bb7565b9"
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
