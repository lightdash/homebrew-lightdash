class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2881.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2881.1/lightdash-cli-0.2881.1-macos-arm64.tar.gz"
      sha256 "e5c6d2c994da39a224ff9a31b5d39b1672c8e18d346a7d094c19e4b9afc92f7c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2881.1/lightdash-cli-0.2881.1-macos-x64.tar.gz"
      sha256 "b77443562545c0a9a66c2663fdb342a1b44aed1ec2be23140bb3fc11feed69f1"
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
