class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2371.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2371.0/lightdash-cli-0.2371.0-macos-arm64.tar.gz"
      sha256 "9d83856f5bcbfbb7ad0d762812f834ac05bd5ce41bc0c1590297d0a02c74bf81"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2371.0/lightdash-cli-0.2371.0-macos-x64.tar.gz"
      sha256 "560e2ad626600fb68d15b80441d964fe79546e5016562b7f6859adb3147170d8"
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
