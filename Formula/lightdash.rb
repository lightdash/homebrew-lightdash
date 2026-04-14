class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2756.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2756.0/lightdash-cli-0.2756.0-macos-arm64.tar.gz"
      sha256 "ed685753706eb293505d517e63479fa517ab5a2af25d45dc261e182f7e24d169"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2756.0/lightdash-cli-0.2756.0-macos-x64.tar.gz"
      sha256 "d6e6f91dc4d5020e6180cfb5d0ab707eeceb2920b981952bc2c4a75e20181a66"
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
