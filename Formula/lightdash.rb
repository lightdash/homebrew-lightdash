class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3013.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3013.0/lightdash-cli-0.3013.0-macos-arm64.tar.gz"
      sha256 "80eb26d01d3171371f6a008e304d766545c7f18833c5b602e085bad5e845a92f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3013.0/lightdash-cli-0.3013.0-macos-x64.tar.gz"
      sha256 "8db9999a7fa850e89293462138a1015a08ddbcf4a3304618af3e1962a4a7bcca"
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
