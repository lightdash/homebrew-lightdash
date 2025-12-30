class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2284.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2284.1/lightdash-cli-0.2284.1-macos-arm64.tar.gz"
      sha256 "b1812d030c968f58b94e58b1998189c8a4b3ad846d91570251d22c9049614124"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2284.1/lightdash-cli-0.2284.1-macos-x64.tar.gz"
      sha256 "57fa95eecab7fa31f2d7f04e8bea0cbd5aa44f8f0da1c2973e0aa36972a22a49"
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
